//Adapted from https://google.github.io/charts/flutter/example/line_charts/stacked_area_custom_color

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class StackedAreaCustomColorLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  final height;
  final width;

  StackedAreaCustomColorLineChart(this.seriesList,
      {this.width, this.height, this.animate});

  // /// Creates a [LineChart] with sample data and no transition.
  // factory StackedAreaCustomColorLineChart.withSampleData() {
  //   return new StackedAreaCustomColorLineChart(
  //     _createSampleData(),
  //     // Disable animations for image tests.
  //     animate: true,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 200,
      width: width ?? 200,
      child: charts.LineChart(seriesList,
          defaultRenderer: charts.LineRendererConfig(
            includeArea: true,
            stacked: true,
          ),
          animate: animate),
    );
  }
}
