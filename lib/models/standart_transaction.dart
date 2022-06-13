import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/models/transaction_category.dart';
import 'package:money_manager_app/models/account.dart';
import 'package:money_manager_app/constants/enums.dart';

class StandartTransaction extends Transaction {
  Account account;
  TransactionCategory transactionCategory;

  StandartTransaction({
    required DateTime dateTime,
    required String name,
    required String note,
    required double amount,
    required this.account,
    required this.transactionCategory,
    required TransactionType transactionType,
  }) : super(
          dateTime: dateTime,
          name: name,
          note: note,
          trType: transactionType,
          amount: amount,
        );

  StandartTransaction.income({
    required DateTime dateTime,
    required String name,
    required String note,
    required double amount,
    required this.account,
    required this.transactionCategory,
  }) : super(
          dateTime: dateTime,
          name: name,
          note: note,
          amount: amount,
          trType: TransactionType.income,
        );

  StandartTransaction.expense({
    required DateTime dateTime,
    required String name,
    required String note,
    required double amount,
    required this.account,
    required this.transactionCategory,
  }) : super(
          dateTime: dateTime,
          name: name,
          note: note,
          amount: amount,
          trType: TransactionType.expense,
        );
}
