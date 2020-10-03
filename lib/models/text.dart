import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle sen({double fontSize, FontWeight fontWeight, Color color}) =>
    GoogleFonts.lato(
      fontSize: fontSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black,
    );

Text SenText(
  String data, {
  double fontSize,
  FontWeight fontWeight,
  Color color,
}) =>
    Text(
      data,
      style: sen(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
