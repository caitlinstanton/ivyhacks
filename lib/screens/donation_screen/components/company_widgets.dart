import 'package:flutter/material.dart';
import 'package:ivyhack/models/company_model.dart';
import 'package:ivyhack/models/text.dart';

Widget companyRow(
  BuildContext context,
  Company company1,
  Company company2,
  Size screen,
) {
  const double side_ratio = 0.07;
  const double in_between_ratio = 0.04;
  const double card_width_ratio =
      (1 - 2 * side_ratio - 1 * in_between_ratio) / 2;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: <Widget>[
        SizedBox(width: screen.width * side_ratio),
        companyCard(
          context,
          company1,
          screen.width * card_width_ratio,
          screen.height * 0.33,
        ),
        SizedBox(width: screen.width * in_between_ratio),
        companyCard(
          context,
          company2,
          screen.width * card_width_ratio,
          screen.height * 0.33,
        ),
        SizedBox(width: screen.width * side_ratio), // Redundant
      ],
    ),
  );
}

Widget companyCard(
  BuildContext context,
  Company company,
  double width,
  double height,
) {
  return GestureDetector(
    child: Container(
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
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SenText(
                  company.subtitle,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    company.imageURL,
                    width: width * 0.75,
                    height: width * 0.75,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
            child: SenText(
              company.briefDescription,
              fontSize: 10,
            ),
          ),
        ],
      ),
    ),
    onTap: company.isDetailsDisplayable
        ? () {
            Navigator.pushNamed(context, "/demo_company");
          }
        : null,
  );
}
