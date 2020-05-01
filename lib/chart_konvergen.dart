import 'package:flutter/widgets.dart';
import 'controller_chart.dart';

/// Example of a simple line chart.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:uts/controller_chart.dart';

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, double>> _createSampleData() {
    final data = [
      new LinearSales(0, 1),
      new LinearSales(1, 1),
      new LinearSales(2, 0.5),
      new LinearSales(3, 0.16),
      new LinearSales(4, 0.00417),
      new LinearSales(5, 0.00834),
      new LinearSales(6, 0.00139),
    ];

    return [
      new charts.Series<LinearSales, double>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

