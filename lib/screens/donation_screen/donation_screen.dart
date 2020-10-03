import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/models/company_model.dart';
import 'package:ivyhack/screens/donation_screen/components/company_widgets.dart';

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
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(screen.height * 0.05),
              child: Column(
                children: [
                  Text(
                    "Non-profits & Charities",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Donate to a non-profit charity or organization. Every 100 FootPrints, we will donate \$5!",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // ListView.builder( // Not working currently
            //   scrollDirection: Axis.vertical,
            //   itemCount: (companies.length / 2).ceil(),
            //   itemBuilder: (context, index) {
            //     return companyRow(
            //         companies[index * 2], companies[index * 2 + 1], screen);
            //   },
            // ),
            companyRow(
              companies[0],
              companies[1],
              screen,
            ),
          ],
        ));
  }
}
