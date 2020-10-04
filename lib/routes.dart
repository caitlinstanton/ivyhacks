import 'package:flutter/widgets.dart';
import 'package:ivyhack/screens/donation_screen/company_details_screen.dart';
import 'package:ivyhack/screens/home_screen.dart';
import 'package:ivyhack/screens/donation_screen/donation_screen.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => Home(),
  '/page2': (context) => DonationScreen(),
  '/page3': (context) => CompanyDetailsScreen(),
};
