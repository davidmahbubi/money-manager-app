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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(32),
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
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 55, 220, 253),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: 260.0,
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                width: 30.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.lightbulb_outline,
                    color: Color.fromARGB(255, 32, 32, 32),
                    size: 24.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(7.0),
                child: Text(
                  "You need to save 25K everyday",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
