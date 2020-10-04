// TODO: Unfinished

import 'package:flutter/material.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/screens/donation_screen/components/donate_button.dart';

class CompanyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          pinned: true,
          expandedHeight: screen.height * 0.4,
          // collapsedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/red_cross.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Align(
                    child: SenText(
                      "American Red Cross",
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    child: donateButton(),
                    alignment: Alignment.topRight,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Who?",
                  textAlign: TextAlign.center,
                  style: sen(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                child: Text(
                  Constant.DONATE_COMPANIES[0].fullDescription,
                  textAlign: TextAlign.center,
                  style: sen(),
                ),
              ) // Hard-coded for the demo
            ],
          ),
        ),
      ],
    ));
  }
}
