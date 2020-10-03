import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/screens/auth_screens/components/user_text_fields.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final double textFieldCurve = 20.0;
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[200],
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              userTextField(
                hint: "Username",
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(textFieldCurve),
                  topRight: Radius.circular(textFieldCurve),
                ),
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 2),
              userTextField(
                hint: "Password",
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(textFieldCurve),
                  bottomRight: Radius.circular(textFieldCurve),
                ),
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SenText(
                  "Forgot Password?",
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ), // Doesn't actually do anything
              authButton("Sign in", () {
                print("Pressed!");
              }),
              authButton("Create your account!", () {
                print("Pressed!");
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget authButton(String text, void Function() onPressed) {
    return Row(
      children: [
        Expanded(
          child: OutlineButton(
            padding: EdgeInsets.symmetric(vertical: 12),
            borderSide: BorderSide(color: Colors.white),
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(textFieldCurve),
            ),
            onPressed: onPressed,
            child: SenText(
              text,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
