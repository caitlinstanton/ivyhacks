import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';

Widget donateButton({void Function() onTap}) {
  return GestureDetector(
    child: Container(
      child: Center(
        child: SenText(
          "Donate!",
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/donate_background.png"),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    ),
    onTap: onTap,
  );
}
