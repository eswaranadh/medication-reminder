import 'package:intl/intl.dart';

class DateFormater {
  String? customTime;

  Map<String,String> formateDate() {
    Map<String, String> timeMap = {
      'day': '',
      'date': '',
      'month': '',
      'year': '',
      'pre': ''
    };
    String day = DateFormat("EEEEE").format(DateTime.now());
    String date = DateFormat("dd").format(DateTime.now());
    String month = DateFormat("MMM").format(DateTime.now());
    String year = DateFormat("yyyy").format(DateTime.now());
    timeMap['day'] = day;
    timeMap['date'] = date;
    timeMap['month'] = month;
    timeMap['year'] = year;
    if (date.endsWith("1")) {
      timeMap['pre'] = 'st';
    } else if (date.endsWith("2")) {
      timeMap['pre'] = 'nd';
    } else if (date.endsWith("3")) {
      timeMap['pre'] = 'rd';
    } else {
      timeMap['pre'] = 'th';
    }
    
    print(timeMap);
    return timeMap;
  }
}
