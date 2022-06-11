import 'model.dart';

class Account extends Model {
  final String name;
  final double initialAmount;
  final String description;

  Account({
    required this.name,
    this.initialAmount = 0,
    required this.description,
  });
}
