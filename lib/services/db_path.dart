import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class DbPaths {
  final DatabaseReference ref = FirebaseDatabase.instanceFor(
    app: Firebase.app(),
    databaseURL:
        "https://linkup-3dca7-default-rtdb.asia-southeast1.firebasedatabase.app",
  ).ref("posts");
  static final root = FirebaseDatabase.instance.ref();
  static DatabaseReference users() => root.child("users");
  static DatabaseReference posts() => root.child("posts");
}
