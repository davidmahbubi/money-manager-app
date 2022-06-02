import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:money_manager_app/pages/transcation.dart';

List<Map<String, dynamic>> menuList = [
  {
    'page': const Transaction(),
    'icon': const Icon(LineAwesomeIcons.home),
  },
  {
    'page': const Transaction(),
    'icon': const Icon(LineAwesomeIcons.pie_chart),
  },
  {
    'page': const Transaction(),
    'icon': const Icon(LineAwesomeIcons.wallet),
  },
];
