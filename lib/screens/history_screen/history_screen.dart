import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/models/constants.dart';
import 'package:ivyhack/models/graph_model.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/models/user_model.dart';
import 'package:ivyhack/screens/history_screen/components/graph.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    //TODO: Replace with firestore
    List<List> historicalActs =
        Constant.SAMPLE_HISTORICAL_ACTS.reversed.toList();
    Map historicalScores = StrMap2DtMap(Constant.SAMPLE_HISTORICAL_SCORES);

    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 12,
              ),
              child: SimpleTimeSeriesChart(
                getTimeSeriesListCumulative(historicalScores),
                width: screen.width,
                height: screen.height * 0.35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Divider(color: Colors.green[900], thickness: 4.5),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: SenText("Recent Activity"),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: screen.width,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: historicalActs.length,
                  itemBuilder: (context, index) {
                    return itemCard(
                      historicalActs[index][1],
                      time: historicalActs[index][0],
                    );
                  },
                ),
              ),
            ),
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
