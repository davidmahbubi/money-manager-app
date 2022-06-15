import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_app/components/bottom_navbar.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/data/menu_list.dart';
import 'package:money_manager_app/models/standart_transaction.dart';
import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/models/transaction_category.dart';
import 'package:money_manager_app/models/transaction_list.dart';
import 'package:money_manager_app/models/account.dart';
import 'package:money_manager_app/services/firebase_services.dart';
import 'package:money_manager_app/pages/wrapper.dart';
import 'package:money_manager_app/pages/create_transaction.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MoneyManagerApp());
}

class MoneyManagerApp extends StatelessWidget {
  const MoneyManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      home: StreamProvider.value(
        value: AuthServices.firebaseUserStream,
        initialData: null,
        child: Wrapper(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentMenuIndex = 0;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    // populateDummyTransactions();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const CreateTransaction(),
            ),
          ).then((_) {
            setState(() {
              if (currentMenuIndex == 0) {
                currentMenuIndex++;
                Timer(const Duration(milliseconds: 30), () {
                  setState(() {
                    currentMenuIndex--;
                  });
                });
              }
            });
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: menuList[currentMenuIndex]['page'],
      bottomNavigationBar: BottomNavbar(
        currentMenuIndex: currentMenuIndex,
        listMenus: menuList,
        onTap: (int index) {
          setState(() {
            currentMenuIndex = index;
          });
        },
      ),
    );
  }

  // void populateDummyTransactions() {
  //   TransactionCategory category = TransactionCategory(
  //     icon: FontAwesomeIcons.utensils,
  //     name: 'Food & Drinks',
  //     category: TransactionCategoryType.expense,
  //   );

  //   List<Transaction> transactionsList = List<StandartTransaction>.generate(
  //     10,
  //     (int index) => StandartTransaction(
  //       dateTime: DateTime.now(),
  //       name: 'Dummy Transaction',
  //       note: 'Testing Transaction',
  //       amount: 200000,
  //       transactionCategory: category,
  //       transactionType: TransactionType.expense,
  //       account: account,
  //     ),
  //   );

  //   TransactionList.transactionsList = transactionsList;
  // }
}
