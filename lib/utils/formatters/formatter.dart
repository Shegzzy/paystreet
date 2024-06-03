
import 'package:intl/intl.dart';
import '../constants/currency.dart';

class PayStreetFormatter{

  // Currency and money formatter
  static String currencyFormatter(double amount){
    return NumberFormat.currency(locale: 'en_USD', symbol: getCurrency(), decimalDigits: 2).format(amount);
  }


}