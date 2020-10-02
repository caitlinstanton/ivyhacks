import 'package:flutter/widgets.dart';
import 'package:ivyhack/screens/auth_wrapper.dart';
import 'package:ivyhack/screens/screen2/screen2.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => AuthWrapper(),
  '/page2': (context) => AnotherScreen(),
};
