import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/machine_adjustment/model/machine_adjustment_model.dart';
import 'package:embecta/utils/constants.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:embecta/utils/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({Key? key}) : super(key: key);

  @override
  _CommentsWidgetState createState() =>
      _CommentsWidgetState();
}

class _CommentsWidgetState
    extends State<CommentsWidget> with AutomaticKeepAliveClientMixin<CommentsWidget> {

  List<String> _made = [
    'Replace/adjust FF&S jaws',
    'Adjust FF&S jaw temperatures',
    'Adjust webs/printer ensure 1/4" vertical seal overlap',
    'Adjust registration marks of webs'
  ];
  List<String> _result = ['Pass', 'Fail', 'Machine Down', 'Changeover'];
  List<String> _firstDrop = ['Pass', 'Fail', 'Machine Down', 'Changeover'];
  List<String> _secondDrop = ['Pass', 'Fail', 'Machine Down', 'Changeover'];
  List<String> _thirdDrop = ['Pass', 'Fail', 'Machine Down', 'Changeover'];
  List<bool> _resultCheck = [true, false];
  List<MachineAdjustmentModel> _machineAdjustmentList = [];
  bool _checkValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child:Padding(padding: EdgeInsets.all(20),child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.all(20),child:
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                        FlutterFlowTheme.of(context).accent2,
                      ),
                      child: Checkbox(
                        value: _checkValue ??= false,
                        onChanged: (newValue) async {
                          setState(() => _checkValue = newValue!);
                        },
                        activeColor:
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Text(
                      'NA',
                      style: TextStyle(
                          fontSize: Constants.fontSize_16
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                    child: Text(
                      'if N/A remaining fields may be left blank',
                      style: TextStyle(
                          fontSize: Constants.fontSize_16,
                          color: Colors.black26
                      ),
                    ),
                  ),)
                ],

              )
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Row(
                  mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QN notification number',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(child:                  Container(
                                    padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black38
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:TextField(

                                      enabled: _checkValue?false:true,
                                      style: Theme.of(context).textTheme.subtitle2,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Enter QN notification number',
                                        constraints: BoxConstraints(
                                          minHeight: 200,
                                        ),
                                        border: InputBorder.none,
                                      ),

                                      onChanged: (value) {
                                      },
                                    ))
                                )
                              ],
                            )
                          ],)
                    ),),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add Comments',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(child:
                                Container(
                                    padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black38
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:TextField(
                                      enabled: _checkValue?false:true,
                                      style: Theme.of(context).textTheme.subtitle2,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Comments',
                                        constraints: BoxConstraints(
                                          minHeight: 200,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value) {
                                      },
                                    ))
                                )
                              ],
                            )
                          ],)
                    ),)])),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),child: Row(
                  mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Signature',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(child:
                                Container(
                                    padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black38
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:TextField(
                                      canRequestFocus: false,
                                      style: Theme.of(context).textTheme.subtitle2,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Peter Murphy',
                                        constraints: BoxConstraints(
                                          minWidth: 100,
                                        ),
                                        border: InputBorder.none,
                                      ),

                                      onChanged: (value) {
                                      },
                                    ))
                                )
                              ],
                            )
                          ],)
                    ),
                    SizedBox(width: 10,),
                    Container(
                        width:300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Date',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                                padding: EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black38
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child:TextField(
                                  canRequestFocus: false,
                                  style: Theme.of(context).textTheme.subtitle2,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.date_range,
                                    ),
                                    suffix: GestureDetector(onTap: (){
                                      print('click');
                                    },child: Padding(padding: EdgeInsets.all(0),child: Icon(Icons.date_range,
                                    ),),),
                                    label: Text('05/03/2024',textAlign: TextAlign.center),
                                    constraints: BoxConstraints(
                                      minWidth: 100,
                                    ),
                                    border: InputBorder.none,
                                  ),

                                  onChanged: (value) {
                                  },
                                ))
                          ],)
                    ),])),
            ]
        )
        )
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}