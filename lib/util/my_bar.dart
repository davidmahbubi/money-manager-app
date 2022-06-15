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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: [
                Container(
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(183, 226, 196, 1),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
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
                      Container(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              color: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 2, bottom: 2, right: 5),
                                child: Text(
                                  "10%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 34, 34),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Service Motor",
                              style: TextStyle(
                                color: Color.fromARGB(221, 19, 19, 19),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                "Rp.350.000",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              color: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 2, bottom: 2, right: 5),
                                child: Text(
                                  "10%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 34, 34),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Service Motor",
                              style: TextStyle(
                                color: Color.fromARGB(221, 19, 19, 19),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                "Rp.350.000",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              color: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 2, bottom: 2, right: 5),
                                child: Text(
                                  "10%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 34, 34),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Service Motor",
                              style: TextStyle(
                                color: Color.fromARGB(221, 19, 19, 19),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                "Rp.350.000",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Container(
                              color: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 2, bottom: 2, right: 5),
                                child: Text(
                                  "10%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 34, 34),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Service Motor",
                              style: TextStyle(
                                color: Color.fromARGB(221, 19, 19, 19),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                "Rp.350.000",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
