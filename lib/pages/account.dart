import 'package:flutter/material.dart';
import 'package:money_manager_app/components/account_card.dart';
import 'package:money_manager_app/data/account_list.dart';

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
                                amount: 3600000,
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
}
