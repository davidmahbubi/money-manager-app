import 'package:flutter/material.dart';
import 'model.dart';

class Account extends Model {
  final Image image;
  final String name;
  final double initialAmount;
  final String? accountNumber;
  final String? expiredDate;

  Account({
    required this.name,
    required this.image,
    this.accountNumber,
    this.expiredDate,
    this.initialAmount = 0,
  });
}
