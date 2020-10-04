import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/screens/auth_screens/components/user_text_fields.dart';
import 'package:ivyhack/components/loading.dart';
import 'package:ivyhack/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService();
  final double textFieldCurve = 20.0;
  String email = '';
  String password = '';
  String error = '';

  bool is_loading = false;

  @override
  Widget build(BuildContext context) {
    return is_loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.greenAccent[200],
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login_background.png"),
                    fit: BoxFit.cover),
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    userTextField(
                      hint: "Email", // MAKE SURE it has an @ symbol
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(textFieldCurve),
                        topRight: Radius.circular(textFieldCurve),
                      ),
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 2),
                    Stack(
                      children: [
                        userTextField(
                          hint: "Password", // MAKE SURE at least 6 chars long
                          isObscureText: true,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(textFieldCurve),
                            bottomRight: Radius.circular(textFieldCurve),
                          ),
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        Align(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.greenAccent[200],
                            ),
                            onPressed: () async {
                              print("Signing in with $email as email and $password as password");
                              // ASSUME valid
                              setState(() => is_loading = true);
                              dynamic result =
                                  await _authService.login(email, password);
                              // Then validate from Firebase's side
                              if (result == null) {
                                setState(() {
                                  error = 'Email and/or Password not found.';
                                  is_loading = false;
                                });
                              }
                            },
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
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
                    authButton("Create your account!", () async {
                      print(
                          "Create account with $email as email and $password as password");
                      // Again ASSUME valid
                      setState(() => is_loading = true);
                      dynamic result = await _authService.register(email, password);
                      // Validate from Firebase's side
                      if (result == null) {
                        setState(() {
                          error = 'Invalid email';
                          is_loading = false;
                        });
                      }
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
