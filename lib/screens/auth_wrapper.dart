import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ivyhack/screens/home_screen/home_screen.dart';
import 'package:ivyhack/screens/login_screen/login_screen.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Either home or login screen
        return LoginScreen();
      },
    );
  }
}
