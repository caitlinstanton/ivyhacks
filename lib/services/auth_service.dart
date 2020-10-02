import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  Future loginAnon() async {
    try {
      UserCredential result = await _authInstance.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  bool isUserLoggedIn() {
    return _authInstance.currentUser != null;
  }
}
