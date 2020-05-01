import 'package:flutter/widgets.dart';
import 'controller_chart.dart';

/// Example of a simple line chart.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:uts/controller_chart.dart';

class SimpleLineChart2 extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart2(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart2.withSampleData() {
    return new SimpleLineChart2(
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
      new LinearSales(0.1, 10),
      new LinearSales(0.25, 4),
      new LinearSales(0.5, 2),
      new LinearSales(1, 1),
      new LinearSales(2, 0.5),
      new LinearSales(3, 0.3),
    ];

    int ansa = 1;
    int numb = 5;
    for (int i = 1; i <= numb; i++){
      ansa *= i;

    }

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

