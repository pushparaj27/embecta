import 'package:embecta/face_id/face_id_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  String getHalfandHour(String customTime){
    //customTime = customTime.substring(0,5);

    DateTime originalTime = DateTime.parse("2024-04-02 " + time12to24Format(customTime));
    DateTime newTime = originalTime.add(Duration(minutes: 30));
    String formattedTime = DateFormat.jm().format(newTime);
    //print("asdasda ${time12to24Format(formattedTime)}");
    //print(formattedTime);
    // Formatting the resulting time back to the custom format
    return formattedTime;
  }

  void showAlertDialog(BuildContext context,String text,bool type){
    showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            content: Text(
                text),
            actions: [
              TextButton(
                onPressed: ()
                {
                  Navigator.pop(
                      alertDialogContext);
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return FaceIdWidget(
                      );
                    },
                  ));
                },
                child: Text('Ok'),
              ),
            ],
          );
        });

  }

  String time12to24Format(String time) {
// var time = "12:01 AM";
    int h = int.parse(time.split(":").first);
    int m = int.parse(time.split(":").last.split(" ").first);
    String meridium = time.split(":").last.split(" ").last.toLowerCase();
    if (meridium == "pm") {
      if (h != 12) {
        h = h + 12;
      }
    }
    if (meridium == "am") {
      if (h == 12) {
        h = 00;
      }
    }
    String newTime = "${h == 0 ? "00" : h}:${m == 0 ? "00" : m}";
    print(newTime);

    return newTime;
  }
}