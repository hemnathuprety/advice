import 'package:intl/intl.dart';

class DateUtility {
  String formatDateToYYYMMDD(DateTime selectedDate) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(selectedDate).toString();
  }

  String formatDateToMMDD(DateTime selectedDate) {
    return DateFormat('MMM dd').format(selectedDate).toString();
  }
}
