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
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 220, 253),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 300.0,
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30.0,
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
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
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
            Container(
              height: 300,
              width: 200,
              color: Color.fromARGB(115, 165, 165, 165),
            )
          ],
        ),
      ),
    );
  }
}
