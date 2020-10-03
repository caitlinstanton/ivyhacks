import 'package:flutter/widgets.dart';
import 'package:ivyhack/screens/auth_screens/login_screen.dart';
import 'package:ivyhack/screens/home_screen.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => Home(),
  '/auth': (context) => LoginScreen(), // to be changed to auth_screen
};
