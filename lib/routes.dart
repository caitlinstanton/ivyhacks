import 'package:flutter/widgets.dart';
import 'package:ivyhack/screens/home_screen.dart';
import 'package:ivyhack/screens/screen2/screen2.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => Home(),
  '/page2': (context) => AnotherScreen(),
};
