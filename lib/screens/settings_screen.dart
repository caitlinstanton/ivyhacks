import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/services/auth_service.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/settings_background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SenText(
                "Account",
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ivyhacks_logo.png"),
                radius: 80,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    RaisedButton(
                      child: Text("Log out"),
                      onPressed: () async {
                        await AuthService().logout();
                      },
                    ),
                    itemCard("Change Password"),
                    itemCard("Preferences"),
                    itemCard("Language"),
                    itemCard("What is Carbon Footprint?"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
