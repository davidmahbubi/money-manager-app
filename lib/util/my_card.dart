import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 219, 219),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(0.0),
            width: 120.0,
            height: 45.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pemasukan Bulanan",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Rp. 24.000.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 255, 170),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(0.0),
            width: 120.0,
            height: 45.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pengeluaran Bulanan",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Rp. 10.000.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
