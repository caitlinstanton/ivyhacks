import 'package:flutter/material.dart';
import 'package:ivyhack/models/constants.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.LIGHT_GREEN,
      body: Center(
        child: Text(
          "History",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
