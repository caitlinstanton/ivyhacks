import 'package:flutter/material.dart';
import 'package:ivyhack/components/loading.dart';
import 'package:ivyhack/components/text_input.dart';
import 'package:ivyhack/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TODO: Temprorary layout. Will be changed.
  // TODO: Also a lot of repeated code from register screen.
  // ^ If end up login similar to register, then could maybe combine the two
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  bool is_loading = false;

  @override
  Widget build(BuildContext context) {
    return is_loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.brown[100],
            appBar: AppBar(
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
              title: Text('Sign in'),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Register'),
                  onPressed: () => widget.toggleView(),
                ),
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: "Email"),
                      validator: (val) => val.isEmpty ? "Enter an email" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: "Password"),
                      obscureText: true,
                      validator: (val) => val.length < 6
                          ? "Enter a password (at least 6 characters)"
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                        color: Colors.pink[400],
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          // First validate using our rules
                          if (_formKey.currentState.validate()) {
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
                          }
                        }),
                    SizedBox(height: 10.0),
                    Text(
                      error,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
