import 'package:intl/intl.dart';
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
