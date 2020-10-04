import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/components/text_divider.dart';
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
    Map<String, IconData> categories2icons = Constant.CATEGORIES_TO_ICONS;

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
            textDivider("Recent Activity"),
            Expanded(
              child: Container(
                width: screen.width,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: historicalActs.length,
                  itemBuilder: (context, index) {
                    return itemCard(
                      historicalActs[index][2],
                      time: historicalActs[index][1],
                      iconData: categories2icons[historicalActs[index][0]]
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
