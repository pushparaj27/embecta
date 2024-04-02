import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/quality_check/quality_check_model.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QualityCheckWidget extends StatefulWidget {
  const QualityCheckWidget({Key? key,this.controller}) : super(key: key);
  final TabController? controller;

  @override
  _QualityCheckWidgetState createState() =>
      _QualityCheckWidgetState();
}

class _QualityCheckWidgetState
    extends State<QualityCheckWidget> with AutomaticKeepAliveClientMixin<QualityCheckWidget>{
  List<String> _result = ['Pass','Fail','Machine Down','Changeover'];
  String _firstResult = '';

  QualityCheckModel? _qualityCheckModel;

  @override
  void initState() {
    _qualityCheckModel = QualityCheckModel();
    super.initState();
  }

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
                            border: TableBorder.symmetric(
                              inside: BorderSide(color: Colors.black, width: 1),
                              outside: BorderSide(color: Colors.black, width: 2),
                            ),
                            columnWidths:{
                              0: FlexColumnWidth(3),
                              2: FlexColumnWidth(2),
                            },

                            children:[
                              TableRow(
                                  children: [
                                    Table(children:[
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textView(context,'Time')
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textView(context,'CASE')
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10),
                                                        child:textView(context,'Every 1/2 hour'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10),
                                                  child:textView(context,'Every 2 hours'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),
                                    ]
                                    ),
                                    TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                      child:textView(context,'Every 4 hours'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                    Table(children:[
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textView(context,'Mission Shield Challenge 5')
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textView(context,'Accuracy')
                                                        )
                                                      ]),
                                                    ]),


                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),
                                    ]
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Table(children:[
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'timeTF1',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'timeTF2',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'timeTF3',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'timeTF4',false)
                                                    )
                                                  ]),
                                                ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'case1',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'case2',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'case3',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'case4',true)
                                                    )
                                                  ]),
                                                ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop1'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop2'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop3'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop4'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'twohoursDrop1'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF5',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF6',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF7',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF8',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case5',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case6',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case7',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case8',true)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop5'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop6'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop7'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop8'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'twohoursDrop2'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                    TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                      child:dropDown(context,'fourHoursDrop1'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                    Table(children:[
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'MSTF1',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'MSTF2',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'MSTF3',false)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'MSTF4',false)
                                                    )
                                                  ]),
                                                ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'acc1',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'acc2',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'acc3',true)
                                                    )
                                                  ]),
                                                  TableRow(children: [
                                                    Container(alignment: Alignment.center,height: 55,
                                                        child: textField(context,'acc4',true)
                                                    )
                                                  ]),
                                                ]),
                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF5',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF6',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF7',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF8',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc5',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc6',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc7',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc8',true)
                                                        )
                                                      ]),
                                                    ]),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Table(children:[TableRow(children:[
                                      Table(border: TableBorder.symmetric(
                                        inside: BorderSide(color: Colors.black, width: 1),
                                        outside: BorderSide(color: Colors.black, width: 2),
                                      ),
                                          columnWidths:{

                                          },

                                          children: [
                                            TableRow(children: [

                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF9',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF10',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF11',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF12',false)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case9',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case10',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case11',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case12',true)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(), children: [
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop9'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop10'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop11'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop12'))
                                                  )),
                                                ]),
                                              ]),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'twohoursDrop3'),))
                                              )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                              /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                            ]),
                                          ]),
                                    ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF13',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF14',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF15',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF16',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case13',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case14',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case15',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case16',true)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop13'))
                                                    )),
                                                  ]
                                                  ),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop14'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop15'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop16'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'twohoursDrop4'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                    TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                      child:dropDown(context,'fourHoursDrop2'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                    Table(children:[TableRow(children:[
                                      Table(border: TableBorder.symmetric(
                                        inside: BorderSide(color: Colors.black, width: 1),
                                        outside: BorderSide(color: Colors.black, width: 2),
                                      ),
                                          columnWidths:{

                                          },

                                          children: [
                                            TableRow(children: [

                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF9',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF10',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF11',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF12',false)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc9',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc10',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc11',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc12',true)
                                                      )
                                                    ]),
                                                  ]),


                                              /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                            ]),
                                          ]),
                                    ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF13',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF14',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF15',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF16',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc13',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc14',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc15',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc16',true)
                                                        )
                                                      ]),
                                                    ]),
                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Table(children:[TableRow(children:[
                                      Table(border: TableBorder.symmetric(
                                        inside: BorderSide(color: Colors.black, width: 1),
                                        outside: BorderSide(color: Colors.black, width: 2),
                                      ),
                                          columnWidths:{

                                          },

                                          children: [
                                            TableRow(children: [

                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF17',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF18',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF19',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'timeTF20',false)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case17',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case18',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case19',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'case20',true)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(), children: [
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop17'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop18'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop19'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'halfDrop20'))
                                                  )),
                                                ]),
                                              ]),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'twohoursDrop5'),))
                                              )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                              /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                            ]),
                                          ]),
                                    ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF21',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF22',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF23',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'timeTF24',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case21',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case22',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case23',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'case24',true)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(), children: [
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop21'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop22'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop23'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'halfDrop24'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'twohoursDrop6'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                    TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                      child:dropDown(context,'fourHoursDrop3'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                    Table(children:[TableRow(children:[
                                      Table(border: TableBorder.symmetric(
                                        inside: BorderSide(color: Colors.black, width: 1),
                                        outside: BorderSide(color: Colors.black, width: 2),
                                      ),
                                          columnWidths:{

                                          },

                                          children: [
                                            TableRow(children: [

                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF17',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF18',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF19',false)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'MSTF20',false)
                                                      )
                                                    ]),
                                                  ]),
                                              Table(border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc17',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc18',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc19',true)
                                                      )
                                                    ]),
                                                    TableRow(children: [
                                                      Container(alignment: Alignment.center,height: 55,
                                                          child: textField(context,'acc20',true)
                                                      )
                                                    ]),
                                                  ]),

                                              /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                            ]),
                                          ]),
                                    ]),
                                      TableRow(children:[
                                        Table(border: TableBorder.symmetric(
                                          inside: BorderSide(color: Colors.black, width: 1),
                                          outside: BorderSide(color: Colors.black, width: 2),
                                        ),
                                            columnWidths:{

                                            },

                                            children: [
                                              TableRow(children: [

                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF21',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF22',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF23',false)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'MSTF24',false)
                                                        )
                                                      ]),
                                                    ]),
                                                Table(border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc21',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc22',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc23',true)
                                                        )
                                                      ]),
                                                      TableRow(children: [
                                                        Container(alignment: Alignment.center,height: 55,
                                                            child: textField(context,'acc24',true)
                                                        )
                                                      ]),
                                                    ]),

                                                /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                              ]),
                                            ]),
                                      ]),]
                                    ),
                                  ]
                              ),
                            ])
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
      selectedItem: _qualityCheckModel?.getDrop(dropDown),
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
              color: _qualityCheckModel?.getDrop(dropDown) == 'Pass'?Colors.green:_qualityCheckModel?.getDrop(dropDown) == 'Fail'?
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
        if(val == 'Fail'){
          showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  content: Text(
                      'Please notify quality tech and shift supervisor for failure.'),
                  actions: [
                    TextButton(
                      onPressed: ()
                {
                  setState(() {
                    widget.controller?.index = 4;
                  });

                  Navigator.pop(
                      alertDialogContext);
                } ,
                      child: Text('Ok'),
                    ),
                  ],
                );
              });
        }
        _qualityCheckModel?.setDrop(context,dropDown,val!);
        setState(() {

        });
      },
    );
  }

  Widget textField(BuildContext context,String textField,bool isEnableFocus){
    return Padding(padding: EdgeInsets.all(10),
        child: TextField(
          style: Theme.of(context).textTheme.subtitle2,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          canRequestFocus: textField.contains('MSTF')?true:isEnableFocus,
          controller: _qualityCheckModel!.selectTextEditor(textField),
          decoration: InputDecoration(
            constraints: BoxConstraints(
                minHeight: 55,
                maxHeight: 55
            ),
            border: InputBorder.none,
          ),
          onTap: (){
            if(textField.contains('timeTF')){
              textField.substring(6,textField.length);
              _qualityCheckModel!.selectTextEditor(textField).text = CustomFunctions().clockInTime();
              setState(() {

              });
            }
          },
          onChanged: (value) {
            //_qualityCheckModel!.selectTextEditor(textField);
          },
    ));
  }

  Widget textView(BuildContext context,String text){
    return Padding(padding: EdgeInsets.all(10),child: Text(text));
  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}