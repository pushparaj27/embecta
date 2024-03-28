import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QualityCheckWidget extends StatefulWidget {
  const QualityCheckWidget({Key? key}) : super(key: key);

  @override
  _QualityCheckWidgetState createState() =>
      _QualityCheckWidgetState();
}

class _QualityCheckWidgetState
    extends State<QualityCheckWidget> with AutomaticKeepAliveClientMixin<QualityCheckWidget>{
  List<String> _result = ['Pass','Fail','Machine Down','Changeover'];
  String _firstResult = '';
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child:Padding(padding: EdgeInsets.all(20),child: Column(
            children: [

              Padding(padding: EdgeInsets.all(20),child: Row(
                  mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(flex:8,child: Column(
                      children: [
                        Table(
                            border:TableBorder(verticalInside: BorderSide(width: 1, color: Colors.black26, style: BorderStyle.solid)),
                            // textDirection: TextDirection.rtl,
                            // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                            // border:TableBorder.all(width: 2.0,color: Colors.red),
                            children: [

                              TableRow(
                                  children: [

                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text("Time",textScaleFactor: 1.0))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text("Every half hour",textScaleFactor: 1.0))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text("Every 2 3 and 4 hour",textScaleFactor: 1.0))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text("Missing shield challenge 5",textScaleFactor: 1.0))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text("Accuracy",textScaleFactor: 1.0))),
                                  ]
                              ),
                            ]),
                        Table(
                            border:TableBorder.all(color: Colors.black26),
                            // textDirection: TextDirection.rtl,
                            // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                            // border:TableBorder.all(width: 2.0,color: Colors.red),
                            children: [

                              TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.00 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.00')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),TableRow(
                                  children: [
                                    TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: Center(child: Text("8.30 AM",textScaleFactor: 1.0,textAlign: TextAlign.center,style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                        child:dropDown(context,'8.30')
                                    )),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                    Center(child: Padding(padding: EdgeInsets.symmetric(vertical: 10),child: Text("",textScaleFactor: 1.0,))),
                                  ]
                              ),

                            ]),

                      ],
                    )),

                  ]
              )
              )
            ]
        )
        )
    );
  }

  Widget dropDown(BuildContext context,String dropDown){
    return DropdownSearch<String>(
      items: _result,
      selectedItem: _firstResult,
      popupProps: PopupProps.menu(
        constraints: BoxConstraints(
            minHeight: 50,
            maxHeight: 200
        ),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          baseStyle: TextStyle(
              color: _firstResult == 'Pass'?Colors.green:_firstResult == 'Fail'?
              Colors.red:Colors.black
          ),
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffE8E8E8),

            hintText: 'Select',
            border: InputBorder.none,
          )
      ),
      dropdownButtonProps: DropdownButtonProps(
        constraints: BoxConstraints(minHeight: 52),
        icon:Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
          size: 15,
        ),

      ),
      onChanged: (val){
        _firstResult = val.toString();
        setState(() {

        });
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}