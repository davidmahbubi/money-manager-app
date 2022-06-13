import 'package:flutter/material.dart';
import 'package:money_manager_app/util/my_bar.dart';
import 'package:money_manager_app/util/my_card.dart';
import 'package:money_manager_app/util/my_piechart.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
              child: const Text(
                "Expense Report",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const MyCard(),
            const SizedBox(height: 5),
            MyPieChart(),
            MyBar()
          ],
        ),
      ),
    );
  }
}
