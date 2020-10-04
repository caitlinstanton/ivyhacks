import 'package:charts_flutter/flutter.dart' as charts;

class Coords {
  final double x;
  final double y;

  Coords(this.x, this.y);
}

class TimeCoords {
  final DateTime t;
  final double y;

  TimeCoords(this.t, this.y);
}

List<charts.Series<Coords, double>> getSeriesList(List<double> data) {
  List<Coords> coordData = [];
  data.asMap().forEach((x, y) => coordData.add(Coords(x * 1.0, y)));

  return [
    charts.Series<Coords, double>(
      id: 'Desktop',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
      domainFn: (Coords sales, _) => sales.x,
      measureFn: (Coords sales, _) => sales.y,
      data: coordData,
    ),
  ];
}

List<charts.Series<TimeCoords, DateTime>> getTimeSeriesListCumulative(Map<DateTime, double> data) {
  List<TimeCoords> coordData = [];
  double currTotal = 0;
  for ((t,y) in data){
    currTotal += y;
    coordData.add(TimeCoords(t, currTotal));
  }

  return [
    charts.Series<TimeCoords, DateTime>(
      id: 'Desktop',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
      domainFn: (TimeCoords sales, _) => sales.t,
      measureFn: (TimeCoords sales, _) => sales.y,
      data: coordData,
    ),
  ];
}
