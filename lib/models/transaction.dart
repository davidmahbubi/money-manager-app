import 'package:money_manager_app/models/model.dart';
import 'package:money_manager_app/constants/enums.dart';

abstract class Transaction extends Model {
  final String name;
  final DateTime dateTime;
  final double amount;
  final String note;
  final TransactionType trType;

  Transaction({
    required this.name,
    required this.dateTime,
    required this.amount,
    required this.note,
    required this.trType,
  });
}
