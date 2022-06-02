import 'package:flutter/material.dart';
import 'package:money_manager_app/components/bottom_navbar.dart';
import 'package:money_manager_app/data/menu_list.dart';

void main(List<String> args) => runApp(const MoneyManagerApp());

class MoneyManagerApp extends StatelessWidget {
  const MoneyManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      l
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
}
