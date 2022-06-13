import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_app/components/home_transaction_item.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/models/standart_transaction.dart';
import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/utils/helper.dart';

class HomeTransaction extends StatelessWidget {
  final DateTime dateTime;
  final double accumulation;
  final List<Transaction> transactionsList;

  const HomeTransaction({
    super.key,
    required this.dateTime,
    required this.accumulation,
    required this.transactionsList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              DateFormat('dd').format(dateTime),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  DateFormat('MM/yyyy').format(dateTime),
                  style: const TextStyle(height: 1.2),
                ),
                Text(
                  DateFormat('EEEE').format(dateTime),
                  style: const TextStyle(height: 1.2),
                ),
              ],
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  formatNumber(accumulation),
                  style: const TextStyle(fontSize: 19, color: primaryGreen),
                ),
              ),
            )
          ],
        ),
        ...transactionsList
            .map((Transaction transaction) => HomeTransactionItem(
                  icon: FaIcon(
                    (transaction as StandartTransaction)
                        .transactionCategory
                        .icon,
                  ),
                  title: transaction.name,
                  category: (transaction as StandartTransaction)
                      .transactionCategory
                      .name,
                  wallet: (transaction as StandartTransaction).account.name,
                  amount: transaction.amount,
                  transactionType: transaction.trType,
                ))
            .toList(),
      ],
    );
  }
}
