import 'package:flutter/material.dart';
import 'package:ivyhack/screens/home_screen/components/top_half.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 44.0),
              child: TopHalf(),
            ),
          ],
        ),
      ),
    );
  }
}
