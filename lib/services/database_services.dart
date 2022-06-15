import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class DatabaseServices {
  static final FirebaseDatabase database = FirebaseDatabase.instance;

  static DatabaseReference getRef(String refPath) {
    return database.ref(refPath);
  }
}
