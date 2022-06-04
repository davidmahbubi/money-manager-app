import 'package:flutter/material.dart';
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
                top: 20,
                left: primaryHorizontalMargin,
                right: primaryHorizontalMargin,
              ),
              width: double.infinity,
              child: const TopHeaderProfile(
                imagePath: 'assets/images/default_profile.png',
                name: 'Andhika',
              ),
            ),
            // Scroll Widget
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: const <Widget>[],
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
