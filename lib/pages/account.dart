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
                    Container(
                        width: 300,
                        height: 180,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/bank_mandiri.png',
                              ),
                            ),
                            Expanded(
                              child: Text("6/2022"),
                            )
                          ],
                        )),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 180,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(254, 203, 104, 1),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(254, 203, 104, 1),
                            spreadRadius: 2,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 180,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(255, 103, 128, 1),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(255, 103, 128, 1),
                            spreadRadius: 2,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
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
