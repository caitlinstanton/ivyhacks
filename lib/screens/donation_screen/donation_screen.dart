import 'package:flutter/material.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/screens/donation_screen/components/company_model.dart';

class DonationScreen extends StatefulWidget {
  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    List<Company> companies = Constant.DONATE_COMPANIES;

    // TODO: Do stuff with the list of companies
    // Possibly use listview.builder
    return Scaffold(
        appBar: AppBar(title: Text("Donation Screen!")),
        body: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.alarm_off),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}


