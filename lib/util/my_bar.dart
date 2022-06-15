import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_manager_app/util/my_log.dart';

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
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 238, 238, 238),
                  ),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 15),
                        Text("Detail Transaction",
                            style: TextStyle(fontSize: 10)),
                        Container(height: 15),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                        MyLog(),
                      ],
                    ),
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
