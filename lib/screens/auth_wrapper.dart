import 'package:flutter/material.dart';
import 'package:ivyhack/models/user_model.dart';
import 'package:ivyhack/screens/auth_screens/auth_screen.dart';
import 'package:ivyhack/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  // This wrapper will listen for auth changes
  @override
  Widget build(BuildContext context) {
    final appUser = Provider.of<AppUser>(context);

    // Either home or login screen
    if (appUser == null){
      return AuthScreen();
    }else{
      return HomeScreen();
    }
  }
}
