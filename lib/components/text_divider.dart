import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';

Widget textDivider(String text, {Color color}) => Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(color: color ?? Colors.green[900], thickness: 4.5),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: SenText(text),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
