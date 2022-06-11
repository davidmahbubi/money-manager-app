import 'package:flutter/material.dart';
import 'package:money_manager_app/components/home_transaction.dart';
import 'package:money_manager_app/components/top_header_profile.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/models/transaction.dart' as transaction_model;
import 'package:money_manager_app/models/transaction_list.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Fixed widget
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: primaryHorizontalMargin,
                right: primaryHorizontalMargin,
              ),
              width: double.infinity,
              child: const TopHeaderProfile(
                imagePath: 'assets/images/default_profile.png',
                name: 'Andhika',
              ),
            ),
            const SizedBox(height: 25),
            // Scroll Widget
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: primaryHorizontalMargin,
                      right: primaryHorizontalMargin,
                      top: 10,
                    ),
                    child: Column(
                      children: <Widget>[
                        ...TransactionList.groupByDate()
                            .entries
                            .map(
                              (
                                MapEntry<DateTime,
                                        List<transaction_model.Transaction>>
                                    transactions,
                              ) =>
                                  Column(
                                children: [
                                  HomeTransaction(
                                    dateTime: transactions.key,
                                    accumulation: 'Rp.0',
                                    transactionsList: transactions.value,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
