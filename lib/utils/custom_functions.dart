import 'package:intl/intl.dart';

class CustomFunctions{

  String currentTime(){
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.jm().format(now);
    return formattedTime;
  }

}