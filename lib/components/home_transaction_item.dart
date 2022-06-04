import 'package:flutter/material.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/constants/theme.dart';

class HomeTransactionItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final String category;
  final String wallet;
  final String amount;
  final TransactionType transactionType;

  const HomeTransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.category,
    required this.wallet,
    required this.amount,
    required this.transactionType,
  });

  Color getTransactionColor() {
    switch (transactionType) {
      case TransactionType.expense:
        return primaryOrange;
      case TransactionType.income:
        return primaryGreen;
      case TransactionType.transfer:
        return primaryGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getTransactionColor(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            icon,
            const SizedBox(width: 20),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(category)
                ],
              ),
            ),
            const SizedBox(width: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    wallet,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
