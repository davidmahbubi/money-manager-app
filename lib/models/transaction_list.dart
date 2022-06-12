import 'package:money_manager_app/models/transaction.dart';

enum TransactionOrderType { ascending, descending }

class TransactionList {
  static List<Transaction> transactionsList = [];

  static Map<DateTime, Map<String, dynamic>> groupByDate() {
    Map<DateTime, Map<String, dynamic>> groupedTransactions = {};

    for (Transaction transaction in transactionsList) {
      if (groupedTransactions[transaction.dateTime] == null) {
        groupedTransactions[transaction.dateTime] = {
          "transactions": [transaction],
          "accumulation": transaction.amount
        };
      } else {
        groupedTransactions[transaction.dateTime]!['transactions']!
            .add(transaction);
        groupedTransactions[transaction.dateTime]!['accumulation'] +=
            transaction.amount;
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
