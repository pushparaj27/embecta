import 'package:intl/intl.dart';

class CustomFunctions{

  String currentTime(){
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.jm().format(now);
    return formattedTime;
  }
  String clockInTime(){
    DateTime now = DateTime.now().add(Duration(minutes:30));
    String formattedTime = DateFormat.jm().format(now);
    return formattedTime;
  }
}