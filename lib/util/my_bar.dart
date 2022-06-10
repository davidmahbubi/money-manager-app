import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBar extends StatelessWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 400.0,
                          height: 25.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 224, 224, 224),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          width: 330.0,
                          height: 500.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 111, 233, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 300.0,
                height: 45.0,
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 32, 32, 32),
                          size: 24.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      height: 30.0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "You need to save 25K everyday",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 34, 34, 34),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
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
