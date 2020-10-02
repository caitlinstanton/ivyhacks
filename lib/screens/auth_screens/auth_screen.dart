import 'package:flutter/material.dart';
import 'package:ivyhack/screens/auth_screens/login_screen.dart';
import 'package:ivyhack/screens/auth_screens/register_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLoginScreen = true;
  void toggleView(){
    setState(() => showLoginScreen = !showLoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(toggleView:  toggleView);
    } else {
      return RegisterScreen(toggleView:  toggleView);
    }
  }
}