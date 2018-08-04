import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';


class Authentication {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> isUserSignedIn() async {
    return _auth.currentUser() != null;
  }
}