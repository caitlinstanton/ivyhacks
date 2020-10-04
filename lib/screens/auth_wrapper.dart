import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ivyhack/screens/auth_screens/login_screen.dart';
import 'package:ivyhack/screens/main_screen.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  // This wrapper will listen for auth changes
  @override
  Widget build(BuildContext context) {
    final firebaseUser = Provider.of<User>(context);

    // Either home or login screen
    if (firebaseUser == null) {
      return LoginScreen();
    } else {
      return MainScreen();
    }
  }
}
