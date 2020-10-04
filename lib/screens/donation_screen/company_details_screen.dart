// TODO: Unfinished

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ivyhack/models/text.dart';

class CompanyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Align(
            alignment: Alignment.bottomCenter,
            child: SenText(
              "American Red Cross",
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ), //MyAppBar(),
          pinned: true,
          expandedHeight: screen.height * 0.4,
          // collapsedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/red_cross.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              myCardDetails(),
              // Container(
              //   padding: EdgeInsets.only(
              //     top: screen.height * 0.05,
              //     bottom: 10,
              //   ),
              //   child: Column(
              //     //TODO: Convert text into senText (and change lato into sen)
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Text(
              //           "Non-profits & Charities",
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     width: screen.width,
              //     child: ListView.builder(
              //       scrollDirection: Axis.vertical,
              //       itemCount: (companies.length / 2).ceil(),
              //       itemBuilder: (context, index) {
              //         // return FlatButton(child: Text("#$index"), onPressed: null,);
              //         return companyRow(companies[index * 2],
              //             companies[index * 2 + 1], screen);
              //       },
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}

Widget myCardDetails() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "HI",
          style: TextStyle(fontSize: 25),
        ),
      ),
    ),
  );
}
