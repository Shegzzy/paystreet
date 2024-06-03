import 'dart:io';
import 'package:intl/intl.dart';

String getCurrency() {
  var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'USD');
  return format.currencySymbol;
}