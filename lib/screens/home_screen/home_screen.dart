import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/components/text_divider.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/screens/home_screen/components/top_half.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, IconData> categories2icons = Constant.CATEGORIES_TO_ICONS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 44.0, bottom: 22.0),
              child: TopHalf(),
            ),
            textDivider("Recommendations", color: Colors.black45),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    itemCard(
                      "Shop from local farmers",
                      color: Colors.green[200],
                      iconData: categories2icons["local"],
                    ),
                    itemCard(
                      "Use public transportation",
                      color: Colors.green[200],
                      iconData: categories2icons["transportation"],
                    ),
                    itemCard(
                      "Take fewer flights",
                      color: Colors.green[200],
                      iconData: categories2icons["flights"],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
