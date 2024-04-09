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
                            border: TableBorder.symmetric(
                              inside: BorderSide(color: Colors.black, width: 1),
                              outside: BorderSide(color: Colors.black, width: 2),
                            ),
                            columnWidths:{
                              0: FlexColumnWidth(4),
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
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:textView(context,'Every 1/2 hour'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:textView(context,'Every 2 hours'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
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
                                      child:dropDown(context,'8.30'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),

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

                                                Table(border: TableBorder.all(),
                                                    children: [
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
                                                Table(border: TableBorder.all(),
                                                    children: [
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
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
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
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
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
                                      child:dropDown(context,'8.30'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
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
                                              Table(border: TableBorder.all(),
                                                  children: [
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
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                              ]),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'8.30'),))
                                              )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'8.30'),))
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
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
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
                                      child:dropDown(context,'8.30'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
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
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                                TableRow(children: [
                                                  Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                      child:dropDown(context,'8.30'))
                                                  )),
                                                ]),
                                              ]),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'8.30'),))
                                              )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                              TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                child:dropDown(context,'8.30'),))
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
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                  TableRow(children: [
                                                    Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                        child:dropDown(context,'8.30'))
                                                    )),
                                                  ]),
                                                ]),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
                                                )),verticalAlignment: TableCellVerticalAlignment.middle,),
                                                TableCell(child: Align(alignment: Alignment.center,child: Center(child: Container(height: 55,child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                                                  child:dropDown(context,'8.30'),))
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
                                      child:dropDown(context,'8.30'),))
                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),
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

  Widget textField(BuildContext context,String textField,bool isEnableFocus){
    return Padding(padding: EdgeInsets.all(10),child: TextField(
      style: Theme.of(context).textTheme.subtitle2,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      canRequestFocus: isEnableFocus,
      controller: TextEditingController()..text,
      decoration: InputDecoration(
        constraints: BoxConstraints(
            minHeight: 55,
            maxHeight: 55
        ),
        border: InputBorder.none,
      ),
      onChanged: (value) {

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