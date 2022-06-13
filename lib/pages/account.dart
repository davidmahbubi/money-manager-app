import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
              child: Text(
                "Wallet",
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
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(183, 226, 196, 1),
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(183, 226, 196, 1),
                                spreadRadius: 2,
                                offset: Offset(0.0, 4.0),
                              ),
                            ],
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 20, bottom: 15),
                                      child: Image.asset(
                                        'assets/images/bank_mandiri.png',
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, top: 25, bottom: 20),
                                      child: Text(
                                        "6/2022",
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Rp.3.600.000",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 20),
                                child: Text(
                                  "**** **** **** 3652",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(255, 139, 158, 1),
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(255, 139, 158, 1),
                                spreadRadius: 2,
                                offset: Offset(0.0, 4.0),
                              ),
                            ],
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 20, bottom: 0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset(
                                          'assets/images/bank_linkaja.png',
                                          height: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, top: 25, bottom: 20),
                                      child: Text(
                                        "6/2022",
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Rp.2.500.000",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 20),
                                child: Text(
                                  "**** **** 5554",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(255, 202, 102, 1),
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(255, 202, 102, 1),
                                spreadRadius: 2,
                                offset: Offset(0.0, 4.0),
                              ),
                            ],
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 20, bottom: 0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset(
                                          'assets/images/bank_dana.jpg',
                                          height: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, top: 25, bottom: 20),
                                      child: Text(
                                        "6/2022",
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Rp.1.700.000",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 20),
                                child: Text(
                                  "**** **** **** 3228",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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
