import 'package:flutter/material.dart';

class UserState extends ChangeNotifier {
  String uid;
  Map<String, dynamic> data;
}

// Below defines the data that each user will have
Map<String, dynamic> getBlankData(String name) {
  return {
    "name": name == null ? "" : name,
    //TODO: Define properties!
  };
}
