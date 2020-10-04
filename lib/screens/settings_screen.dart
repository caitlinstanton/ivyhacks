import 'package:flutter/material.dart';
import 'package:ivyhack/services/auth_service.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            RaisedButton(
              child: Text("Log out"),
              onPressed: () async{
                await AuthService().logout();
              },
            )
          ],
        ),
      ),
    );
  }
}
