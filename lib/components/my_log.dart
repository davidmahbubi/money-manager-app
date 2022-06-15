import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLog extends StatelessWidget {
  const MyLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        color: Color.fromARGB(255, 34, 34, 34), fontSize: 10),
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
    );
  }
}
