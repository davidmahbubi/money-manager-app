import 'package:flutter/material.dart';
import 'package:money_manager_app/components/home_transaction.dart';
import 'package:money_manager_app/components/top_header_profile.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/models/transaction_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:money_manager_app/models/user.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    Key? key,
    // required this.user,
  }) : super(key: key);
  // final User user;

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
              child: TopHeaderProfile(
                user: User(
                  name: 'Andhika Putra Negara',
                  email: 'andhikanegara@gmail.com',
                ),
              ),
            ),
            const SizedBox(height: 25),
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
                    child: _renderTransactionsList(context),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderTransactionsList(BuildContext context) {
    if (TransactionList.transactionsList.isNotEmpty) {
      // Get all transactions group by date
      Map<DateTime, Map<String, dynamic>> groupedTransactions =
          TransactionList.groupByDate();

      return Column(
        children: groupedTransactions.entries
            .map(_renderHomeTransactionItem)
            .toList(),
      );
    } else {
      return Column(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/empty.svg',
            height: 400,
          ),
          const Text(
            'A Fresh Start Here',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'You can start recording your transaction by clicking + icon below',
            textAlign: TextAlign.center,
          )
        ],
      );
    }
  }

  Widget _renderHomeTransactionItem(
    MapEntry<DateTime, Map<String, dynamic>> transactions,
  ) =>
      Column(children: [
        HomeTransaction(
          dateTime: transactions.key,
          accumulation: transactions.value['accumulation'] as double,
          transactionsList: transactions.value['transactions'],
        ),
        const SizedBox(height: 15)
      ]);
}
