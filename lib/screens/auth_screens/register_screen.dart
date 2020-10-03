import 'package:flutter/material.dart';
import 'package:ivyhack/components/loading.dart';
import 'package:ivyhack/components/text_input.dart';
import 'package:ivyhack/services/auth_service.dart';

class RegisterScreen extends StatefulWidget {
  final Function toggleView;
  // TODO: Temprorary layout. Will be changed.
  // TODO: Also a lot of repeated code from login screen.
  // ^ If end up login similar to register, then could maybe combine the two
  RegisterScreen({this.toggleView});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name = '';
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
              title: Text('Sign up'),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Sign In'),
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
                          textInputDecoration.copyWith(hintText: "Name"),
                      validator: (val) => val.isEmpty ? "Enter a name" : null,
                      onChanged: (val) {
                        setState(() => name = val);
                      },
                    ),
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
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          // First validate using our rules
                          if (_formKey.currentState.validate()) {
                            setState(() => is_loading = true);
                            dynamic result = await _authService.register(
                                email, password, name);
                            // Then validate from Firebase's side
                            if (result == null) {
                              setState(() {
                                error = 'Invalid email';
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
