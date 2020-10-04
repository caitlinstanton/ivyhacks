import 'package:flutter/material.dart';
import 'package:ivyhack/models/constants.dart';

class UserState extends ChangeNotifier {
  String uid;
  double currentScore = 0;
  Map<String, dynamic> data;
  UserState({this.uid, this.currentScore, this.data});
}

class Demo{
  static UserState demo = UserState(uid: "Demo", currentScore:105, data:{"name": "demo"});
}

// Below defines the data that each user will have
Map<String, dynamic> getBlankData(String name) {
  return {
    "name": name == null ? "" : name,
    // Demo purposes
    "actions": Constant.SAMPLE_HISTORICAL_ACTS,
    "scores": Constant.SAMPLE_HISTORICAL_SCORES,
  };
}

Map<DateTime, double> StrMap2DtMap(Map<String, double> strMap) {
  Map<DateTime, double> dtMap = {};
  strMap.forEach((strDt, y) {
    dtMap[DateTime.parse(strDt)] = y;
  });
  return dtMap;
}
