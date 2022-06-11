import 'package:money_manager_app/models/model.dart';

enum TransactionCategoryType { expense, income }

class TransactionCategory extends Model {
  final String name;
  final TransactionCategoryType category;

  TransactionCategory({required this.name, required this.category});
}
