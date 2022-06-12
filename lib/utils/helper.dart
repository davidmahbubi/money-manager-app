import 'package:intl/intl.dart';

String formatNumber(double number, {String prefix = 'Rp. '}) {
  NumberFormat converter = NumberFormat('#,##0', 'en_US');
  return '$prefix${converter.format(number)}';
}
