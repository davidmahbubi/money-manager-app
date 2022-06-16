import 'package:flutter/material.dart';
import 'package:money_manager_app/components/account_card.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/data/account_list.dart';
import 'package:money_manager_app/data/transaction_list.dart';
import 'package:money_manager_app/models/standart_transaction.dart';
import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/models/account.dart' as account_model;
import 'package:money_manager_app/models/transfer_transaction.dart';

// ignore: must_be_immutable
class Account extends StatelessWidget {
  List<Color> colorsPalette = const <Color>[
    Color.fromRGBO(183, 226, 196, 1),
    Color.fromRGBO(255, 139, 158, 1),
    Color.fromRGBO(255, 202, 102, 1)
  ];

  int _colorIndex = 0;

  Account({Key? key}) : super(key: key);

  int get colorIndex {
    if (_colorIndex + 1 > colorsPalette.length) {
      _colorIndex = 0;
    }
    return _colorIndex++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
              child: const Text(
                "Wallets",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...AccountList.accountsList
                        .map(
                          (acc) => Column(
                            children: [
                              AccountCard(
                                shadowColor: colorsPalette[colorIndex],
                                image: acc.image,
                                expired: acc.expiredDate ?? '-',
                                amount: countValues(acc),
                                cardNumber: acc.accountNumber ?? '-',
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double countValues(account_model.Account account) {
    double subtotal = 0;

    List<Transaction> trs = TransactionList.getByAccount(account);

    for (Transaction tr in trs) {
      if (tr is StandartTransaction) {
        if (tr.trType == TransactionType.income) {
          subtotal += tr.amount;
        } else {
          subtotal -= tr.amount;
        }
      } else if (tr is TransferTransaction) {
        if (tr.sourceAccount.id == account.id) {
          subtotal -= (tr.amount + tr.transferFee);
        } else {
          subtotal += tr.amount;
        }
      }
    }

    return subtotal;
  }
}
