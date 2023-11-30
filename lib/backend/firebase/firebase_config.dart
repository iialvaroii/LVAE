import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDm8WYO8h08Q_jMCFqvnDldarqRB7Mud0U",
            authDomain: "ingenieria-a1743.firebaseapp.com",
            projectId: "ingenieria-a1743",
            storageBucket: "ingenieria-a1743.appspot.com",
            messagingSenderId: "164626713906",
            appId: "1:164626713906:web:6ac9beb291f404256b1b2b",
            measurementId: "G-H9ZB8ML66C"));
  } else {
    await Firebase.initializeApp();
  }
}
