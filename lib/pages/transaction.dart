import 'package:flutter/material.dart';
import 'package:money_manager_app/components/home_transaction.dart';
import 'package:money_manager_app/components/top_header_profile.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/data/user_data.dart';
import 'package:money_manager_app/data/transaction_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_manager_app/models/user.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  // Future<void> getData() async {
  //   print('getting data');
  //   DatabaseReference ref = DatabaseServices.database.ref('transactions');
  //   DatabaseEvent evt = await ref.once();
  //   print(evt.snapshot.value);
  //   print('not end');
  // }

  @override
  Widget build(BuildContext context) {
    // getData();

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
                user: UserData.activeUser ?? User(email: '', name: ''),
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
      Map<String, Map<String, dynamic>> groupedTransactions =
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
    MapEntry<String, Map<String, dynamic>> transactions,
  ) =>
      Column(children: [
        HomeTransaction(
          dateTime: transactions.value['dateTime'],
          accumulation: transactions.value['accumulation'] as double,
          transactionsList: transactions.value['transactions'],
        ),
        const SizedBox(height: 15)
      ]);
}
