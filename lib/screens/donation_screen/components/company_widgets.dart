import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ivyhack/models/company_model.dart';

Widget companyRow(Company company1, Company company2, Size screen) {
  const double side_ratio = 0.07;
  const double in_between_ratio = 0.04;
  const double card_width_ratio = (1 - 2 * side_ratio - 1 * in_between_ratio) / 2;
  return Row(
    children: <Widget>[
      SizedBox(width: screen.width * side_ratio),
      companyCard(company1, screen.width * card_width_ratio, screen.height * 0.3),
      SizedBox(width: screen.width * in_between_ratio),
      companyCard(company2, screen.width * card_width_ratio, screen.height * 0.3),
      SizedBox(width: screen.width * side_ratio), // Redundant
    ],
  );
}


Widget companyCard(Company company, double width, double height) {
  return Container(
    // margin: EdgeInsets.all(5),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Text(
          company.name,
          style: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Image.network(
                "https://picsum.photos/250?image=",
                width: width * 0.75,
                height: width * 0.75,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: Text(
            company.description,
            style: GoogleFonts.lato(
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    ),
  );
}

