import 'package:intl/intl.dart';

class DateUtility {
  String formatDateToYYYMMDD(DateTime selectedDate) {
    return DateFormat('yyyy-MM-dd').format(selectedDate).toString();
  }

  //HH:mm:ss

  String formatDateToMMDD(DateTime selectedDate) {
    return DateFormat('MMM dd').format(selectedDate).toString();
  }
}
