import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';


class Authentication {

  static final Authentication _instance = Authentication._internal();

  factory Authentication() => _instance;

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  Authentication._internal();

  Future<bool> isUserSignedIn() async {
    return _auth.currentUser() != null;
  }

  Future<bool> signInWithEmail(String email, String password) async {
    FirebaseUser firebaseUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return firebaseUser != null;
  }
}