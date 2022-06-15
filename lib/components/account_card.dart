import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/helper.dart';

class AccountCard extends StatelessWidget {
  final Image image;
  final Color shadowColor;
  final String expired;
  final double amount;
  final String cardNumber;

  const AccountCard({
    super.key,
    required this.shadowColor,
    required this.image,
    required this.expired,
    required this.amount,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(
              color: shadowColor,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: shadowColor,
                spreadRadius: 2,
                offset: const Offset(0.0, 4.0),
              ),
            ],
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [image],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                        top: 25,
                        bottom: 20,
                      ),
                      child: Text(
                        expired,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  formatNumber(amount),
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  cardNumber,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 23),
            ],
          ),
        ),
      ],
    );
  }
}
