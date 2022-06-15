import 'dart:async';

import 'package:flutter/material.dart';
import 'package:money_manager_app/components/bottom_navbar.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/data/menu_list.dart';
import 'package:money_manager_app/data/user_data.dart';
import 'package:money_manager_app/models/user.dart' as user_model;
import 'package:money_manager_app/services/auth_services.dart';
import 'package:money_manager_app/pages/wrapper.dart';
import 'package:money_manager_app/pages/create_transaction.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  User user;

  MainPage({Key? key, required this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentMenuIndex = 0;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    // populateDummyTransactions();
    print(widget.user);
    buildUserData();

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
              if (currentMenuIndex == 0 || currentMenuIndex == 1) {
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

  void buildUserData() {
    UserData.activeUser = user_model.User(
      name: widget.user.email ?? '',
      email: widget.user.email ?? '',
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
