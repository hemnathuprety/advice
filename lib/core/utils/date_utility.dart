import 'package:intl/intl.dart';

class DateUtility {
  String formatDateToYYYMMDD(DateTime selectedDate) {
    return DateFormat('yyyy-MM-dd', 'en_US').format(selectedDate);
  }

  //HH:mm:ss

  String formatDateToMMDD(DateTime selectedDate) {
    return DateFormat('MMM dd', 'en_US').format(selectedDate);
  }
}
