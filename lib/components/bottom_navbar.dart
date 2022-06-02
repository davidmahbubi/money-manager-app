import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int currentMenuIndex;
  final Function(int index) onTap;
  final List<Map<String, dynamic>> listMenus;

  const BottomNavbar({
    Key? key,
    required this.currentMenuIndex,
    required this.onTap,
    required this.listMenus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentMenuIndex,
      onTap: onTap,
      items: listMenus.map((Map<String, dynamic> menu) {
        return BottomNavigationBarItem(icon: menu['icon'], label: "");
      }).toList(),
    );
  }
}
