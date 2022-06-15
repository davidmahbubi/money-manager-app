import 'package:flutter/material.dart';
import 'package:money_manager_app/models/transaction_category.dart';
import 'package:money_manager_app/utils/helper.dart';

class MyLog extends StatelessWidget {
  TransactionCategory category;
  double subtotal = 0;

  MyLog({Key? key, required this.category, required this.subtotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Container(
                color: Colors.amber,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                    top: 2,
                    bottom: 2,
                    right: 5,
                  ),
                  child: Text(
                    "10%",
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                category.name,
                style: const TextStyle(
                  color: Color.fromARGB(221, 19, 19, 19),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Text(
                  formatNumber(subtotal),
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 20,
        )
      ],
    );
  }
}
