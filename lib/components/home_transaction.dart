import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_app/components/home_transaction_item.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/constants/theme.dart';

class HomeTransaction extends StatelessWidget {
  final DateTime dateTime;
  final String accumulation;

  const HomeTransaction({
    super.key,
    required this.dateTime,
    required this.accumulation,
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
            const Flexible(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '+Rp.14,000',
                  style: TextStyle(fontSize: 19, color: primaryGreen),
                ),
              ),
            )
          ],
        ),
        const HomeTransactionItem(
          icon: FaIcon(FontAwesomeIcons.utensils),
          title: 'Dinner with crush',
          category: 'Food & Drinks',
          wallet: 'Cash',
          amount: '-Rp.14,000',
          transactionType: TransactionType.expense,
        ),
        const HomeTransactionItem(
          icon: FaIcon(FontAwesomeIcons.coins),
          title: 'Office\'s July Salary',
          category: 'Salary',
          wallet: 'Rekening BCA',
          amount: '+5,000,000',
          transactionType: TransactionType.income,
        ),
        const HomeTransactionItem(
          icon: FaIcon(FontAwesomeIcons.utensils),
          title: 'Dinner with crush',
          category: 'Food & Drinks',
          wallet: 'Cash',
          amount: '-Rp.14,000',
          transactionType: TransactionType.expense,
        ),
      ],
    );
  }
}
