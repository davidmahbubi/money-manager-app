import 'package:money_manager_app/models/transaction.dart';

enum TransactionOrderType { ascending, descending }

class TransactionList {
  static List<Transaction> transactionsList = [];

  static Map<DateTime, List<Transaction>> groupByDate() {
    Map<DateTime, List<Transaction>> groupedTransactions = {};

    for (Transaction transaction in transactionsList) {
      if (groupedTransactions[transaction.dateTime] == null) {
        groupedTransactions[transaction.dateTime] = [transaction];
      } else {
        groupedTransactions[transaction.dateTime]!.add(transaction);
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
