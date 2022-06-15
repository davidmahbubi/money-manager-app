import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_app/models/transaction_category.dart';

class TransactionCategoryList {
  static List<TransactionCategory> transactionCategoriesList = [
    TransactionCategory(
      name: 'Food and Drinks',
      category: TransactionCategoryType.expense,
      icon: FontAwesomeIcons.utensils,
    ),
    TransactionCategory(
      name: 'Transportation',
      category: TransactionCategoryType.expense,
      icon: FontAwesomeIcons.car,
    ),
    TransactionCategory(
      name: 'Salary',
      category: TransactionCategoryType.income,
      icon: FontAwesomeIcons.dollarSign,
    ),
    TransactionCategory(
      name: 'Allowance',
      category: TransactionCategoryType.income,
      icon: FontAwesomeIcons.moneyBill,
    ),
  ];

  static List<TransactionCategory> getSpecificCategories(
    TransactionCategoryType type,
  ) {
    return transactionCategoriesList
        .where((TransactionCategory category) => category.category == type)
        .toList();
  }
}
