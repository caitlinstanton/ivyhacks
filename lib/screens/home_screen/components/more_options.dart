import 'package:flutter/material.dart';
import 'package:ivyhack/components/item_card.dart';
import 'package:ivyhack/models/text.dart';

void showOptions(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: SenText("More options"),
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.6,
          child: ListView(children: [
            itemCard("Eat a vegan meal"),
            itemCard("Turn heater down"),
            itemCard("Fly economy class"),
            itemCard("Buy local"),
            itemCard("Compost"),
          ],),
        )
      ],
    ),
  );
}

