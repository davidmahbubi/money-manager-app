import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatelessWidget {
  final dataMap = <String, double>{
    "Pengeluaran": 10000000,
  };

  final colorList = <Color>[
    Color.fromARGB(255, 0, 255, 170),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: 300,
          height: 180,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: PieChart(
            dataMap: dataMap,
            chartType: ChartType.ring,
            baseChartColor: Color.fromARGB(255, 63, 63, 63).withOpacity(0.15),
            colorList: colorList,
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
            totalValue: 24000000,
          ),
        ),
      ),
    );
  }
}
