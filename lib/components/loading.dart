import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ivyhack/models/constants.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.LIGHT_GREEN,
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.green,
          size: 50.0,
        ),
      ),
    );
  }
}