import 'package:flutter/material.dart';
import 'package:money_manager_app/components/account_card.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

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
                  children: <Widget>[
                    AccountCard(
                      shadowColor: const Color.fromRGBO(183, 226, 196, 1),
                      image: Image.asset(
                        'assets/images/bank_mandiri.png',
                        height: 30,
                      ),
                      expired: '06/2022',
                      amount: 3600000,
                      cardNumber: '**** **** **** 3652',
                    ),
                    const SizedBox(height: 20),
                    AccountCard(
                      shadowColor: const Color.fromRGBO(255, 139, 158, 1),
                      image: Image.asset(
                        'assets/images/bank_linkaja.png',
                        height: 30,
                      ),
                      expired: '06/2022',
                      amount: 3600000,
                      cardNumber: '**** **** **** 5554',
                    ),
                    const SizedBox(height: 20),
                    AccountCard(
                      shadowColor: const Color.fromRGBO(255, 202, 102, 1),
                      image: Image.asset(
                        'assets/images/bank_dana.jpg',
                        height: 30,
                      ),
                      expired: '06/2022',
                      amount: 1700000,
                      cardNumber: '**** **** **** 5554',
                    ),
                    const SizedBox(height: 20),
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
