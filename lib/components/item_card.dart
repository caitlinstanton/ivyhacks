import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';

Widget itemCard(String text, {String time, IconData iconData, Color color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
    child: Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: color ?? Colors.green[100],
      ),
      child: Row(
        children: [
          Icon(iconData, size: 30),
          Expanded(
            child: Center(
              child: SenText(text, fontSize: 20),
            ),
          ),
        ],
      ),
    ),
  );
}
