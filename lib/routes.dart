import 'package:flutter/widgets.dart';
import 'package:ivyhack/screens/auth_screens/login_screen.dart';
import 'package:ivyhack/screens/auth_wrapper.dart';
import 'package:ivyhack/screens/donation_screen/demo_company_screen.dart';
import 'package:ivyhack/screens/main_screen.dart';
import 'package:ivyhack/screens/map_screen/map.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => AuthWrapper(),
  '/main': (context) => MainScreen(),
  '/auth': (context) => LoginScreen(),
  '/demo_company': (context) => CompanyDetailsScreen(),
  '/map': (context) => MapWidget(),
};
