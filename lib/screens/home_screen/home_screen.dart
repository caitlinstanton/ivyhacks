import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ivyhack/components/loading.dart';
import 'package:ivyhack/models/user_model.dart';
import 'package:ivyhack/services/auth_service.dart';
import 'package:ivyhack/services/database_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();
  UserState userState = UserState();

  @override
  Widget build(BuildContext context) {
    final firebaseUser = Provider.of<User>(context);
    if (userState.data == null) {
      loadUserData(firebaseUser.uid);
    }
    return userState.data == null
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.brown[50],
            appBar: AppBar(
              title: Text('Home screen!'),
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('logout'),
                  onPressed: () async {
                    await _authService.logout();
                  },
                ),
              ],
            ),
            body: Text("Welcome ${userState.data["name"]}"),
          );
  }

  Future loadUserData(String uid) async {
    userState.data = await DatabaseService(uid: uid).getUserData();
    print("User data loaded for ${userState.data["name"]}");
    setState(() {}); // Updates the screen to reflect current user data
  }
}
