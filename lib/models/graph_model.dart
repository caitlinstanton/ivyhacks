import 'package:charts_flutter/flutter.dart' as charts;

class TimeCoords {
  final DateTime t;
  final double y;

  TimeCoords(this.t, this.y);
}

List<charts.Series<TimeCoords, DateTime>> getTimeSeriesListCumulative(Map<DateTime, double> data) {
  List<TimeCoords> coordData = [];
  double currTotal = 0;
  data.forEach((t, y){
    currTotal += y;
    coordData.add(TimeCoords(t, currTotal));
  });

  return [
    charts.Series<TimeCoords, DateTime>(
      id: 'Desktop',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      // areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
      domainFn: (TimeCoords sales, _) => sales.t,
      measureFn: (TimeCoords sales, _) => sales.y,
      data: coordData,
    ),
  ];
}

