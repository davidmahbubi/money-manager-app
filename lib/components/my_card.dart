import 'package:flutter/material.dart';
import 'package:money_manager_app/data/transaction_list.dart';
import 'package:money_manager_app/utils/helper.dart';

import '../models/transaction.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 219, 219, 219),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              margin: const EdgeInsets.all(0.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Pemasukan Bulanan",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        TransactionList.getIncomes().isEmpty
                            ? 'Rp. 0'
                            : formatNumber(TransactionList.getIncomes()
                                .map((Transaction tr) => tr.amount)
                                .reduce((value, element) => value + element)),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 255, 170),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              margin: const EdgeInsets.all(0.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Pengeluaran Bulanan",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        TransactionList.getExpenses().isEmpty
                            ? 'Rp.0'
                            : formatNumber(TransactionList.getExpenses()
                                .map((Transaction tr) => tr.amount)
                                .reduce((value, element) => value + element)),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
