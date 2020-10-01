import 'package:flutter/material.dart';

class AnotherScreen extends StatefulWidget {
  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

class _AnotherScreenState extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("This is another screen!")),
        body: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.alarm_off),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Press this to pop this screen off the 'stack', which returns to home.",
              ),
            ),
            Text("The back arrow also does a pop action!"),
          ],
        ));
  }
}
