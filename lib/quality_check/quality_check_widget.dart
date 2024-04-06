import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/models/home_page_model.dart';
import 'package:embecta/quality_check/quality_check_model.dart';
import 'package:embecta/utils/constants.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QualityCheckWidget extends StatefulWidget {
  const QualityCheckWidget({Key? key, this.controller, this.homePageModel})
      : super(key: key);
  final TabController? controller;
  final HomePageModel? homePageModel;

  @override
  _QualityCheckWidgetState createState() => _QualityCheckWidgetState();
}

class _QualityCheckWidgetState extends State<QualityCheckWidget>
    with AutomaticKeepAliveClientMixin<QualityCheckWidget> {
  bool machinedown = false;
  bool ffourhrs = false;
  String ffourhrsString = '';
  bool sfourhrs = false;
  bool tfourhrs = false;
  List<String> _result = ['Pass', 'Fail', 'Machine Down', 'Changeover'];
  String _firstResult = '';

  QualityCheckModel? _qualityCheckModel;

  @override
  void initState() {
    _qualityCheckModel = QualityCheckModel();
    _qualityCheckModel!.initTextController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'REF.QC700434',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_18,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Text(
                        'Inspect 5 bags per QC700434 and record "Time" and "Result" below',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700),
                      ),
                    ))
                  ],
                ),
              ),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 8,
                            child: Column(
                              children: [
                                Table(
                                    border: TableBorder.symmetric(
                                      inside: const BorderSide(
                                          color: Colors.black, width: 2),
                                      outside: const BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    columnWidths: const {
                                      0: FlexColumnWidth(23),
                                      1: FlexColumnWidth(4.5),
                                      2: FlexColumnWidth(0),
                                    },
                                    children: [
                                      TableRow(children: [
                                        Table(
                                          children: [
                                            TableRow(children: [
                                              Table(
                                                  border: TableBorder.symmetric(
                                                    inside: const BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    outside: const BorderSide(
                                                        color: Colors.black,
                                                        width: 2),
                                                  ),
                                                  columnWidths: const {
                                                    0: FlexColumnWidth(20),
                                                    1: FlexColumnWidth(5),
                                                    2: FlexColumnWidth(1),
                                                  },
                                                  children: [
                                                    TableRow(children: [
                                                      Table(
                                                          border: TableBorder
                                                              .symmetric(
                                                            inside:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 1),
                                                            outside:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: 2),
                                                          ),
                                                          children: [
                                                            TableRow(children: [
                                                              Table(
                                                                  border:
                                                                      TableBorder
                                                                          .all(),
                                                                  children: [
                                                                    TableRow(
                                                                        children: [
                                                                          Container(
                                                                              alignment: Alignment.center,
                                                                              height: 55,
                                                                              child: textView(context, 'Time'))
                                                                        ]),
                                                                  ]),
                                                              Table(
                                                                  border:
                                                                      TableBorder
                                                                          .all(),
                                                                  children: [
                                                                    TableRow(
                                                                        children: [
                                                                          Container(
                                                                              alignment: Alignment.center,
                                                                              height: 55,
                                                                              child: textView(context, 'CASE'))
                                                                        ]),
                                                                  ]),
                                                              Table(
                                                                  border:
                                                                      TableBorder
                                                                          .all(),
                                                                  children: [
                                                                    TableRow(
                                                                        children: [
                                                                          Center(
                                                                              child: Container(alignment: Alignment.center, height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0), child: textView(context, 'Every 1/2 hour')))),
                                                                        ]),
                                                                  ]),
                                                              TableCell(
                                                                verticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Center(
                                                                        child: Container(
                                                                            alignment: Alignment.center,
                                                                            height: 55,
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.symmetric(horizontal: 0),
                                                                              child: textView(context, 'Every 2 hours'),
                                                                            )))),
                                                              ),

                                                              /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                            ]),
                                                          ]),
                                                      TableCell(
                                                        verticalAlignment:
                                                            TableCellVerticalAlignment
                                                                .middle,
                                                        child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Center(
                                                              child: Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 55,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            0,
                                                                        vertical:
                                                                            0),
                                                                    child: textView(
                                                                        context,
                                                                        'Every 4 hours'),
                                                                  )),
                                                            )),
                                                      ),
                                                    ]),
                                                  ]),
                                            ])
                                          ],
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Center(
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: 55,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 0,
                                                          vertical: 0),
                                                      child: textView(context,
                                                          'Mission Shield Challenge 5'),
                                                    )),
                                              )),
                                        ),
                                      ]),
                                      // --------------------table------------------------------------------------
                                      TableRow(
                                        children: [
                                          Table(
                                            border: TableBorder.symmetric(
                                              inside: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1),
                                              outside: const BorderSide(
                                                  color: Colors.black,
                                                  width: 2),
                                            ),
                                            columnWidths: const {
                                              0: FlexColumnWidth(20),
                                              1: FlexColumnWidth(5),
                                              2: FlexColumnWidth(1),
                                            },
                                            children: [
                                              TableRow(children: [
                                                Table(children: [
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        // columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            // st..........t1,t2,t4
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF1',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF2',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF3',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF4',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            // ed..........t1,t2,t4
                                                            // st..........c1,c2,c4
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case1',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case2',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case3',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case4',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            // ed..........c1,c2,c4
                                                            // st..........eh1,eh2,eh4
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop1')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop2')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop3')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop4')))),
                                                                      ]),
                                                                ]),

                                                            // ed..........eh1,eh2,eh4
                                                            // st..........eth1
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(context, 'twohoursDrop1'),
                                                                          )))),
                                                            ),

                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF5',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF6',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF7',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF8',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case5',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case6',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case7',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case8',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop5')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop6')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop7')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop8')))),
                                                                      ]),
                                                                ]),
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(context, 'twohoursDrop2'),
                                                                          )))),
                                                            ),

                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                ]),
                                                TableCell(
                                                  verticalAlignment:
                                                      TableCellVerticalAlignment
                                                          .middle,
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Center(
                                                          child: Container(
                                                              child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 0,
                                                                vertical: 0),
                                                        child: dropDown(context,
                                                            'fourHoursDrop1'),
                                                      )))),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Table(children: [
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF9',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF10',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF11',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF12',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case9',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case10',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case11',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case12',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop9')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop10')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop11')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop12')))),
                                                                      ]),
                                                                ]),
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(context, 'twohoursDrop3'),
                                                                          )))),
                                                            ),

                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF13',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF14',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF15',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF16',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case13',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case14',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case15',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case16',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop13')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop14')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop15')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop16')))),
                                                                      ]),
                                                                ]),
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(context, 'twohoursDrop4'),
                                                                          )))),
                                                            ),
                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                ]),
                                                TableCell(
                                                  verticalAlignment:
                                                      TableCellVerticalAlignment
                                                          .middle,
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Center(
                                                          child: Container(
                                                              height: 55,
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        0,
                                                                    vertical:
                                                                        0),
                                                                child: dropDown(
                                                                    context,
                                                                    'fourHoursDrop2'),
                                                              )))),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Table(children: [
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF17',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF18',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF19',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF20',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case17',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case18',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case19',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case20',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop17')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop18')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop19')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop20')))),
                                                                      ]),
                                                                ]),
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(
                                                                              context,
                                                                              'twohoursDrop5',
                                                                            ),
                                                                          )))),
                                                            ),

                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                  TableRow(children: [
                                                    Table(
                                                        border: TableBorder
                                                            .symmetric(
                                                          inside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1),
                                                          outside:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2),
                                                        ),
                                                        columnWidths: const {},
                                                        children: [
                                                          TableRow(children: [
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF21',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF22',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF23',
                                                                                false))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'timeTF24',
                                                                                false))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case21',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case22',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case23',
                                                                                true))
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Container(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            height:
                                                                                55,
                                                                            child: textField(
                                                                                context,
                                                                                'case24',
                                                                                true))
                                                                      ]),
                                                                ]),
                                                            Table(
                                                                border:
                                                                    TableBorder
                                                                        .all(),
                                                                children: [
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop21')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop22')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop23')))),
                                                                      ]),
                                                                  TableRow(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Container(height: 55, child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), child: dropDown(context, 'halfDrop24')))),
                                                                      ]),
                                                                ]),
                                                            TableCell(
                                                              verticalAlignment:
                                                                  TableCellVerticalAlignment
                                                                      .middle,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Center(
                                                                      child: Container(
                                                                          height: 55,
                                                                          child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                dropDown(context, 'twohoursDrop6'),
                                                                          )))),
                                                            ),

                                                            /*Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),vertical
                                                    Alignment: TableCellVerticalAlignment.middle,),),
                                                    Expanded(child: TableCell(child: Align(alignment: Alignment.center,child: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 0),
                                                      child:dropDown(context,'8.30'),)
                                                    )),verticalAlignment: TableCellVerticalAlignment.middle,),)*/
                                                          ]),
                                                        ]),
                                                  ]),
                                                ]),
                                                TableCell(
                                                  verticalAlignment:
                                                      TableCellVerticalAlignment
                                                          .middle,
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Center(
                                                          child: Container(
                                                              height: 55,
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        0,
                                                                    vertical:
                                                                        0),
                                                                child: dropDown(
                                                                    context,
                                                                    'fourHoursDrop3'),
                                                              )))),
                                                ),
                                              ]),
                                            ],
                                          ),
                                          TableCell(
                                            verticalAlignment:
                                                TableCellVerticalAlignment.top,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Center(
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: textField(
                                                            context,
                                                            'mc',
                                                            true)))),
                                          ),
                                        ],
                                      ),
                                    ])
                              ],
                            )),
                      ]))
            ])));
  }

  Widget dropDown(BuildContext context, String dropDown) {
    return 
    DropdownSearch<String>(
      items: _result,
      enabled: _qualityCheckModel!.isEnabled(dropDown),
      selectedItem: _qualityCheckModel?.getDrop(dropDown),
      popupProps: const PopupProps.menu(
        constraints: BoxConstraints(minHeight: 50, maxHeight: 200),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
          textAlign: TextAlign.center,
          baseStyle: TextStyle(
              fontSize: Constants.fontSize_14,
              color: //int.parse(dropDown.substring(dropDown.length - 1)) > 8
                    _qualityCheckModel?.getDrop(dropDown) == 'Pass'
                  ? Colors.green
                  : _qualityCheckModel?.getDrop(dropDown) == 'Fail'
                      ? Colors.red
                      : Colors.black),
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            labelStyle: TextStyle(fontSize: Constants.fontSize_12),
            fillColor: const Color(0xffFFFFFF),
            hintText: 'Select',
            border: InputBorder.none,
          )),
      dropdownButtonProps: DropdownButtonProps(
        //constraints: BoxConstraints(minHeight: 55),
        alignment: Alignment.center,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
          size: 15,
        ),
      ),
      onChanged: (val) {
        if (val!.toLowerCase() != 'machine down') {
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop')) {
            _qualityCheckModel?.setDrop(context,dropDown,val.toString());
            ffourhrs = false;
           setState(() {
             
           });
          }
        
        }
        if (val.toLowerCase() == 'machine down') {
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop')) {
            _qualityCheckModel?.setDrop(context,dropDown,val.toString());
            setState(() {
              ffourhrs = true;
            });
          }
        }


        if(dropDown.toString().toLowerCase().contains('fourhoursdrop'))

        /*if (ffourhrs) {*/
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop1') &&
              _qualityCheckModel!.getDrop(dropDown).toString().toLowerCase().contains('machine down')) {
            setState(() {
              _qualityCheckModel?.setDrop(context, 'halfDrop1', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop2', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop3', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop4', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop5', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop6', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop7', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop8', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop1', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop2', val);
            });
          }
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop2') &&
              _qualityCheckModel!.getDrop(dropDown).toString().toLowerCase().contains('machine down')) {
            setState(() {
              _qualityCheckModel?.setDrop(context, 'halfDrop9', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop10', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop11', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop12', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop13', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop14', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop15', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop16', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop3', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop4', val);
            });
          }if (dropDown.toString().toLowerCase().contains('fourhoursdrop3') &&
              _qualityCheckModel!.getDrop(dropDown).toString().toLowerCase().contains('machine down')) {
            setState(() {
              _qualityCheckModel?.setDrop(context, 'halfDrop17', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop18', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop19', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop20', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop21', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop22', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop23', val);
              _qualityCheckModel?.setDrop(context, 'halfDrop24', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop3', val);
              _qualityCheckModel?.setDrop(context, 'twohoursDrop4', val);
            });
          }
        //}

        if (val == 'Fail') {
          showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  content: const Text(
                      'Please notify quality tech and shift supervisor for failure.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          widget.controller?.index = 4;
                          widget.homePageModel!.selectedTab = 4;
                        });
                        Navigator.pop(alertDialogContext);
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                );
              });
        }
        _qualityCheckModel?.setDrop(context, dropDown, val!);
        setState(() {});
      },
    );
  }

  Widget textField(BuildContext context, String textField, bool isEnableFocus) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          readOnly: false,
          style: Theme.of(context).textTheme.subtitle2,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          enabled: _qualityCheckModel!.canRequestFocus(textField),
          controller: _qualityCheckModel!.selectTextEditor(textField),
          decoration: InputDecoration(
            constraints: BoxConstraints(
                minHeight: textField == 'timeTF1' ? 205 : 55,
                maxHeight: textField == 'timeTF1' ? 205 : 55),
            border: InputBorder.none,
          ),
          onTap: () {
            if (textField.contains('timeTF')) {
              String textTF = textField.substring(6, textField.length);
              print('casdasdasd $textTF');
              print('casdasdasd $textField');
              print(
                  'casdasdasd ${_qualityCheckModel!.selectTextEditor('timeTF1')!.text.toString()}');

              if (_qualityCheckModel!
                      .selectTextEditor('timeTF1')!
                      .text
                      .toString() !=
                  '') {
                int no = int.parse(textTF);
                print(
                    'adasssssssss2 ${_qualityCheckModel!.selectTextEditor('timeTF' + (no - 1).toString())!.text.toString()}');

                if (no > 1) {
                  if (_qualityCheckModel!
                          .selectTextEditor('timeTF' + (no - 1).toString())!
                          .text
                          .toString() !=
                      '') {
                    print(
                        'adasssssssss ${_qualityCheckModel!.selectTextEditor('timeTF' + (no - 1).toString())!.text.toString()}');
                    _qualityCheckModel!.selectTextEditor(textField)!.text =
                        CustomFunctions().getHalfandHour(_qualityCheckModel!
                            .selectTextEditor('timeTF' + (no - 1).toString())!
                            .text
                            .toString());
                  }
                }
              } else {
                if (textField == 'timeTF1') {
                  _qualityCheckModel!.selectTextEditor('timeTF1')!.text =
                      CustomFunctions().clockInTime();
                }
              }
              setState(() {});
            }
          },
          onChanged: (value) {
            //_qualityCheckModel!.selectTextEditor(textField);
          },
        ));
  }

  Widget textView(BuildContext context, String text) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w800)));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
