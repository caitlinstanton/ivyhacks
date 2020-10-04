import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivyhack/routes.dart';
import 'package:ivyhack/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // Goes full screen
    return FutureBuilder(
      // FutureBuilder to initialize app with firebase
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        return StreamProvider<User>.value(
          // StreamProvider to let auth_wrapper listen for auth changes
          value: AuthService().firebaseUser,
          child: MaterialApp(
            title: "IvyHack",
            initialRoute: '/', // To override the default of '/'
            routes: routes,
          ),
        );
      },
    );
  }
}
