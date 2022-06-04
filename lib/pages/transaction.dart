import 'package:flutter/material.dart';
import 'package:money_manager_app/components/home_transaction.dart';
import 'package:money_manager_app/components/top_header_profile.dart';
import 'package:money_manager_app/constants/theme.dart';

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
                        HomeTransaction(
                          dateTime: DateTime.now(),
                          accumulation: '+14,000',
                        ),
                        const SizedBox(height: 30),
                        HomeTransaction(
                          dateTime: DateTime.now(),
                          accumulation: '+14,000',
                        ),
                        const SizedBox(height: 30),
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
