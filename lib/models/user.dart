import 'model.dart';

class User extends Model {
  String picture;
  String name;
  String email;

  User({
    required this.name,
    required this.email,
    this.picture = 'assets/images/default_profile.png',
  }) : super();

  String get displayName => name.split('@')[0];
}
