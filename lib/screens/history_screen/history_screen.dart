import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/models/text.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            // TODO: To be replaced by graph
            Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Container(
                color: Colors.blue,
                height: 50,
                child: Text(
                  "History",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Divider(color: Colors.green[600], thickness: 4.5),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal:10.0),
                    child: SenText("Recent Activity"),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            itemCard("Ride bicycle for 5 miles"),
            itemCard("Carpool with coworkers."),
            itemCard("Use reusable water bottle."),
            itemCard("Eat a vegan meal."),
          ],
        ),
      ),
    );
  }
}

Widget dividerBlock() {
  return Column(
    children: [
      Text("asdfasdf"),
      Divider(
        color: Colors.black,
        thickness: 2,
      ),
      Text("asdfasdf"),
    ],
  );
}
