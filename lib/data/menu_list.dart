import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:money_manager_app/pages/account.dart';
import 'package:money_manager_app/pages/chart.dart';
import 'package:money_manager_app/pages/transaction.dart';
import 'package:money_manager_app/pages/user.dart';

List<Map<String, dynamic>> menuList = [
  {
    'page': const Transaction(),
    'icon': const Icon(LineAwesomeIcons.home),
  },
  {
    'page': const Chart(),
    'icon': const Icon(LineAwesomeIcons.pie_chart),
  },
  {
    'page': Account(),
    'icon': const Icon(LineAwesomeIcons.wallet),
  },
  {
    'page': const User(),
    'icon': const Icon(LineAwesomeIcons.user),
  },
];
