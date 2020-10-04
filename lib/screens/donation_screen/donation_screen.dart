import 'package:flutter/material.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/models/company_model.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/screens/donation_screen/components/company_widgets.dart';

class DonationScreen extends StatefulWidget {
  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    List<Company> companies = Constant.DONATE_COMPANIES;

    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: screen.height * 0.05,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SenText(
                      "Non-profits & Charities",
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Donate to a non-profit charity or organization.",
                    textAlign: TextAlign.center,
                    style: sen(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "For every 100 Credits earned, we will donate \$5!",
                    textAlign: TextAlign.center,
                    style: sen(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "You currently have 20 points.",
                    textAlign: TextAlign.center,
                    style: sen(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: screen.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: (companies.length / 2).ceil(),
                  itemBuilder: (context, index) {
                    return companyRow(
                      context,
                      companies[index * 2],
                      companies[index * 2 + 1],
                      screen,
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
