import 'package:flutter/cupertino.dart';
import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/pages/account.dart';
import 'package:money_manager_app/constants/enums.dart';

class TransferTransaction extends Transaction {
  final double transferFee;
  final Account sourceAccount, destinationAccount;

  TransferTransaction({
    required DateTime dateTime,
    required String name,
    required String note,
    required this.sourceAccount,
    required double amount,
    required this.destinationAccount,
    this.transferFee = 0,
  }) : super(
          dateTime: dateTime,
          name: name,
          amount: amount,
          note: note,
          trType: TransactionType.transfer,
        );
}
