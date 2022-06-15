import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatelessWidget {
  final dataMap = <String, double>{
    "Pengeluaran": 10000000,
  };

  final colorList = const <Color>[Color.fromARGB(255, 0, 255, 170)];

  MyPieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          child: PieChart(
            dataMap: dataMap,
            chartType: ChartType.ring,
            baseChartColor:
                const Color.fromARGB(255, 63, 63, 63).withOpacity(0.15),
            colorList: colorList,
            chartValuesOptions: const ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
            totalValue: 24000000,
          ),
        ),
      ),
    );
  }
}
