import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_manager_app/components/my_log.dart';
import 'package:money_manager_app/data/transaction_list.dart';

class MyBar extends StatelessWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(TransactionList.groupByCategory());

    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 238, 238, 238),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 15),
                          Text(
                            "Detail Transaction",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 15),
                          ...TransactionList.groupByCategory().entries.map(
                              (MapEntry<String, Map<String, dynamic>> val) {
                            return MyLog(
                              category: val.value['category'],
                              subtotal: val.value['subtotal'],
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
