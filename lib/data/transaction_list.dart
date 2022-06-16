import 'package:intl/intl.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/models/standart_transaction.dart';
import 'package:money_manager_app/models/transaction.dart';

enum TransactionOrderType { ascending, descending }

class TransactionList {
  static List<Transaction> transactionsList = [];

  static Map<String, Map<String, dynamic>> groupByDate() {
    Map<String, Map<String, dynamic>> groupedTransactions = {};

    for (Transaction transaction in getTransactions()) {
      if (groupedTransactions[
              DateFormat.yMd().format(transaction.dateTime).toString()] ==
          null) {
        groupedTransactions[
            DateFormat.yMd().format(transaction.dateTime).toString()] = {
          'dateTime': transaction.dateTime,
          "transactions": [transaction],
          "accumulation": transaction.amount
        };
      } else {
        groupedTransactions[DateFormat.yMd()
                .format(transaction.dateTime)
                .toString()]!['transactions']!
            .add(transaction);
        groupedTransactions[DateFormat.yMd()
            .format(transaction.dateTime)
            .toString()]!['accumulation'] += transaction.amount;
      }
    }

    return groupedTransactions;
  }

  static List<MapEntry<String, Map<String, dynamic>>> groupByCategory() {
    Map<String, Map<String, dynamic>> groupedTransactions = {};

    for (Transaction transaction in getTransactions()) {
      if (transaction is StandartTransaction) {
        if (groupedTransactions[transaction.transactionCategory.name]
                ?.isNotEmpty ??
            false) {
          groupedTransactions[transaction.transactionCategory.name]![
                  'transactions']
              .add(transaction);
          groupedTransactions[transaction.transactionCategory.name]![
              'subtotal'] += transaction.amount;
        } else {
          groupedTransactions[transaction.transactionCategory.name] = {
            'category': transaction.transactionCategory,
            'transactions': [transaction],
            'subtotal': transaction.amount,
          };
        }
      }
    }

    List<MapEntry<String, Map<String, dynamic>>> transactionsList =
        groupedTransactions.entries.toList();
    transactionsList.sort((MapEntry<String, Map<String, dynamic>> v1,
            MapEntry<String, Map<String, dynamic>> v2) =>
        int.tryParse(
            (v2.value['subtotal'] - v1.value['subtotal']).toString()) ??
        0);

    return transactionsList;
  }

  static List<Transaction> getExpenses() {
    return getTransactions()
        .where((Transaction tr) => tr.trType == TransactionType.expense)
        .toList();
  }

  static List<Transaction> getIncomes() {
    return getTransactions()
        .where((Transaction tr) => tr.trType == TransactionType.income)
        .toList();
  }

  static void addTransaction(Transaction transaction) {
    transactionsList.add(transaction);
  }

  static List<Transaction> getTransactions({
    TransactionOrderType transactionOrderType = TransactionOrderType.descending,
  }) {
    List<Transaction> newList = List.from(transactionsList);
    newList.sort(
        (Transaction a, Transaction b) => b.dateTime.compareTo(a.dateTime));
    return newList;
  }
}
