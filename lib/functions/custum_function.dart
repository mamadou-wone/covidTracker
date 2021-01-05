import 'package:intl/intl.dart';

class CustumFunction {
  static formatDailyCase(int dailyCase) {
    final number = new NumberFormat("#,##0", "en_US");

    return number.format(dailyCase);
  }

  static formatTotalCase(int totalCase) {
    final number = new NumberFormat("#,##0.0", "en_US");
    var formatNumber;
    if (totalCase < 100000000) {
      formatNumber = totalCase / 1000000;
      number.format(formatNumber);
    } else if (totalCase < 1000000000) {
      formatNumber = totalCase / 10000000;
      number.format(formatNumber);
    } else {
      formatNumber = totalCase / 100000000;
      number.format(formatNumber);
    }
    return number.format(formatNumber) + "M total";
  }
}
