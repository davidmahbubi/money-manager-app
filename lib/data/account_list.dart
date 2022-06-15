import 'package:money_manager_app/models/account.dart';
import 'package:flutter/material.dart';

class AccountList {
  static List<Account> accountsList = [
    Account(
      name: 'Cash',
      initialAmount: 0,
      image: Image.asset(
        'assets/images/cash.png',
        height: 30,
      ),
    ),
    Account(
      name: 'Rekening Mandiri',
      initialAmount: 0,
      image: Image.asset(
        'assets/images/bank_mandiri.png',
        height: 30,
      ),
      accountNumber: '**** **** **** 5554',
      expiredDate: '06/22',
    ),
    Account(
      name: 'Rekening Link Aja',
      initialAmount: 0,
      image: Image.asset(
        'assets/images/bank_linkaja.png',
        height: 30,
      ),
      accountNumber: '**** **** **** 5554',
      expiredDate: '06/22',
    ),
    Account(
      name: 'Rekening Dana',
      initialAmount: 0,
      image: Image.asset(
        'assets/images/bank_dana.jpg',
        height: 30,
      ),
      accountNumber: '**** **** **** 5554',
      expiredDate: '06/22',
    ),
  ];
}
