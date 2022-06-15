import 'package:flutter/material.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/models/transaction_category.dart';

class TransactionCategoryList {
  static late List<TransactionCategory> transactionCategoriesList = [
    TransactionCategory(
      name: 'Food and Drinks',
      category: TransactionCategoryType.expense,
      icon: Icons.palette,
    ),
    TransactionCategory(
      name: 'Transportation',
      category: TransactionCategoryType.expense,
      icon: Icons.gas_meter,
    ),
  ];
}
