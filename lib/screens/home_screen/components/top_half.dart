import 'package:flutter/material.dart';
import 'package:ivyhack/models/text.dart';
import 'package:ivyhack/screens/home_screen/components/more_options.dart';
import 'package:ivyhack/models/user_model.dart';
class TopHalf extends StatefulWidget {
  @override
  _TopHalfState createState() => _TopHalfState();
}

class _TopHalfState extends State<TopHalf> {
  double _currentScore = 105; // Hardcoded for demo purposes
  double _placeholderHeight = 35;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65.0),
            child: base(),
          ),
          toes(),
        ],
      ),
    );
  }

  Widget toes() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              placeholder(),
              itemButton(
                Icons.shopping_cart,
                deltaScore: 3,
                tooltip: "Purchases",
              ),
            ],
          ),
          Column(
            children: [
              itemButton(
                Icons.local_gas_station,
                deltaScore: 10,
                tooltip: "Fuel",
              ),
              placeholder(),
            ],
          ),
          Column(
            children: [
              itemButton(
                Icons.directions_bus,
                deltaScore: 7,
                tooltip: "Transportation",
              ),
              placeholder(),
            ],
          ),
          Column(
            children: [
              placeholder(),
              itemButton(
                Icons.fastfood,
                deltaScore: 3,
                tooltip: "Food",
              ),
            ],
          )
        ],
      );

  Widget base() => Container(
        width: 275,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.all(Radius.elliptical(275, 200)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SenText(
                  '${Demo.demo.currentScore.toInt()}',
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
                SenText(
                  "CO2e FootPrints",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
                SenText(
                  "consumed",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: itemButton(
                Icons.library_add,
                color: Colors.green[400],
                tooltip: "Track a footprint",
                onPressed: () {
                  showOptions(context);
                },
              ),
            ),
          ],
        ),
      );

  Widget placeholder() => Text(
        "",
        style: TextStyle(
          color: Colors.white,
          fontSize: _placeholderHeight,
        ),
      );

  Widget itemButton(
    IconData iconData, {
    Color color,
    double deltaScore,
    String tooltip,
    void Function() onPressed,
  }) =>
      GestureDetector(
        child: Tooltip(
          message: tooltip,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 55,
            height: 50,
            decoration: BoxDecoration(
              color: color ?? Colors.green[200],
              borderRadius: BorderRadius.all(Radius.elliptical(60, 50)),
            ),
            child: Icon(iconData, size: 30, color: Colors.white),
          ),
        ),
        onTap: onPressed ??
            () {
              print("Pressed '$tooltip'. ");
              Demo.demo.currentScore += deltaScore ?? 0;
              setState(() {});
            },
      );
}
