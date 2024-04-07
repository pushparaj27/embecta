import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/machine_adjustment/model/machine_adjustment_model.dart';
import 'package:embecta/utils/constants.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:embecta/utils/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MachineAdjustmentWidget extends StatefulWidget {
  const MachineAdjustmentWidget({Key? key}) : super(key: key);

  @override
  _MachineAdjustmentWidgetState createState() =>
      _MachineAdjustmentWidgetState();
}

class _MachineAdjustmentWidgetState extends State<MachineAdjustmentWidget>
    with AutomaticKeepAliveClientMixin<MachineAdjustmentWidget> {
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
  SharedPreferences? prefs;
  @override
  void initState() {
    updateData();
    super.initState();
  }

  void updateData() async {
    for (int i = 0; i < _result.length; i++) {
      MachineAdjustmentModel machineAdjustmentModel = MachineAdjustmentModel(
          '',
          false,
          _made[i],
          '',
          'Select Item',
          '',
          'Select Item',
          '',
          'Select Item');
      _machineAdjustmentList.add(machineAdjustmentModel);
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        prefs = await SharedPreferences.getInstance();
        
        if (_machineAdjustmentList[0].firstTime ==
            machineAdjustmentModel.firstTime) {
          
          
          machineAdjustmentModel.firstTime =
              prefs!.getString("firstTime").toString().isEmpty ||
                      prefs!.getString("firstTime").toString() == 'null'
                  ? machineAdjustmentModel.firstTime
                  : prefs!.getString("firstTime").toString();
                 
        }
        if (_machineAdjustmentList[1].firstTime ==
            machineAdjustmentModel.firstTime) {
          machineAdjustmentModel.firstTime =
              prefs!.getString("firstTimeS").toString().isEmpty ||
                      prefs!.getString("firstTimeS").toString() == 'null'
                  ? machineAdjustmentModel.firstTime
                  : prefs!.getString("firstTimeS").toString();
        }
        if (_machineAdjustmentList[2].firstTime ==
            machineAdjustmentModel.firstTime) {
          machineAdjustmentModel.firstTime =
              prefs!.getString("firstTimeT").toString().isEmpty ||
                      prefs!.getString("firstTimeT").toString() == 'null'
                  ? machineAdjustmentModel.firstTime
                  : prefs!.getString("firstTimeT").toString();
        }
        if (_machineAdjustmentList[3].firstTime ==
            machineAdjustmentModel.firstTime) {
          machineAdjustmentModel.firstTime =
              prefs!.getString("firstTimeF").toString().isEmpty ||
                      prefs!.getString("firstTimeF").toString() == 'null'
                  ? machineAdjustmentModel.firstTime
                  : prefs!.getString("firstTimeF").toString();
        }
        if (_machineAdjustmentList[0].secondTime ==
            machineAdjustmentModel.secondTime) {
          machineAdjustmentModel.secondTime =
              prefs!.getString("secondTime").toString().isEmpty ||
                      prefs!.getString("secondTime").toString() == 'null'
                  ? machineAdjustmentModel.secondTime
                  : prefs!.getString("secondTime").toString();
        }
        if (_machineAdjustmentList[1].secondTime ==
            machineAdjustmentModel.secondTime) {
          machineAdjustmentModel.secondTime =
              prefs!.getString("secondTimeS").toString().isEmpty ||
                      prefs!.getString("secondTimeS").toString() == 'null'
                  ? machineAdjustmentModel.secondTime
                  : prefs!.getString("secondTimeS").toString();
        }
        if (_machineAdjustmentList[2].secondTime ==
            machineAdjustmentModel.secondTime) {
          machineAdjustmentModel.secondTime =
              prefs!.getString("secondTimeT").toString().isEmpty ||
                      prefs!.getString("secondTimeT").toString() == 'null'
                  ? machineAdjustmentModel.secondTime
                  : prefs!.getString("secondTimeT").toString();
        }
        if (_machineAdjustmentList[3].secondTime ==
            machineAdjustmentModel.secondTime) {
          machineAdjustmentModel.secondTime =
              prefs!.getString("secondTimeF").toString().isEmpty ||
                      prefs!.getString("secondTimeF").toString() == 'null'
                  ? machineAdjustmentModel.secondTime
                  : prefs!.getString("secondTimeF").toString();
        }
        if (_machineAdjustmentList[0].thirdTime ==
            machineAdjustmentModel.thirdTime) {
          machineAdjustmentModel.thirdTime =
              prefs!.getString("thirdTime").toString().isEmpty ||
                      prefs!.getString("thirdTime").toString() == 'null'
                  ? machineAdjustmentModel.secondTime
                  : prefs!.getString("thirdTime").toString();
        }
        if (_machineAdjustmentList[1].thirdTime ==
            machineAdjustmentModel.thirdTime) {
          machineAdjustmentModel.thirdTime =
              prefs!.getString("thirdTimeS").toString().isEmpty ||
                      prefs!.getString("thirdTimeS").toString() == 'null'
                  ? machineAdjustmentModel.thirdTime
                  : prefs!.getString("sthirdTimeS").toString();
        }
        if (_machineAdjustmentList[2].thirdTime ==
            machineAdjustmentModel.thirdTime) {
          machineAdjustmentModel.thirdTime =
              prefs!.getString("thirdTimeT").toString().isEmpty ||
                      prefs!.getString("thirdTimeT").toString() == 'null'
                  ? machineAdjustmentModel.thirdTime
                  : prefs!.getString("thirdTimeT").toString();
        }
        if (_machineAdjustmentList[3].thirdTime ==
            machineAdjustmentModel.thirdTime) {
          machineAdjustmentModel.thirdTime =
              prefs!.getString("thirdTimeF").toString().isEmpty ||
                      prefs!.getString("thirdTimeF").toString() == 'null'
                  ? machineAdjustmentModel.thirdTime
                  : prefs!.getString("thirdTimeF").toString();
        }
// -----------------------------------------------------------------
debugPrint(
            'machineliest ml 1 ${_machineAdjustmentList[0].firstResult}');
        debugPrint(
            'machineliest mo 2 ${prefs!.getString("firstResult").toString()}');
        if (_machineAdjustmentList[0].firstResult ==
            prefs!.getString("firstResult").toString()) {
            
          machineAdjustmentModel.firstResult =
              prefs!.getString("firstResult").toString().isEmpty ||
                      prefs!.getString("firstResult").toString() == 'null'
                  ? machineAdjustmentModel.firstResult
                  : prefs!.getString("firstResult").toString();
                   setState(() {
            
          });
        }

        if (_machineAdjustmentList[1].firstResult ==
            machineAdjustmentModel.firstResult) {
          machineAdjustmentModel.firstResult =
              prefs!.getString("firstResultS").toString().isEmpty ||
                      prefs!.getString("firstResultS").toString() == 'null'
                  ? machineAdjustmentModel.firstResult
                  : prefs!.getString("firstResultS").toString();
        }
        if (_machineAdjustmentList[2].firstResult ==
            machineAdjustmentModel.firstResult) {
          machineAdjustmentModel.firstResult =
              prefs!.getString("firstResultT").toString().isEmpty ||
                      prefs!.getString("firstResultT").toString() == 'null'
                  ? machineAdjustmentModel.firstResult
                  : prefs!.getString("firstResultT").toString();
        }
        if (_machineAdjustmentList[3].firstResult ==
            machineAdjustmentModel.firstResult) {
          machineAdjustmentModel.firstResult =
              prefs!.getString("firstResultF").toString().isEmpty ||
                      prefs!.getString("firstResultF").toString() == 'null'
                  ? machineAdjustmentModel.firstResult
                  : prefs!.getString("firstResultF").toString();
        }
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: EdgeInsets.all(20),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         child: Text(
                //           'REF.QC700434',
                //           textAlign: TextAlign.start,
                //           style: TextStyle(
                //               fontSize: Constants.fontSize_18,
                //               fontFamily: Constants.fontFamily,
                //               fontWeight: FontWeight.w700),
                //         ),
                //       ),
                //       Expanded(
                //           child: Container(
                //         child: Text(
                //           'Inspect 5 bags per QC700434 and record "Time" and "Result" below',
                //           textAlign: TextAlign.end,
                //           style: TextStyle(
                //               fontSize: Constants.fontSize_14,
                //               fontFamily: Constants.fontFamily,
                //               fontWeight: FontWeight.w700),
                //         ),
                //       ))
                //     ],
                //   ),
                // ),
                // Divider(),

                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _machineAdjustmentList.length,
                  itemBuilder: (context, dataIndex) {
/*
                return Column(
                  children: [
                    Align(alignment: Alignment.topCenter,child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                        child:Column(children: [
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
                                    value: machineAdjustmentModel.checkBox ??= false,
                                    onChanged: (newValue) async {
                                      setState(() => machineAdjustmentModel.checkBox = newValue!);
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
                          ),
                          Align(alignment: Alignment.topLeft,child: Text('Replace/adjust FF&S jaws',textAlign: TextAlign.start),),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        style: Theme.of(context).textTheme.subtitle2,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        controller: TextEditingController()..text,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                        ),
                                        onChanged: (value) {
                                        },
                                      )

                                    ],
                                  )),
                                  SizedBox(width: 10,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DropdownSearch<String>(
                                        items: _result,
                                        selectedItem: _firstDrop,
                                        popupProps: PopupProps.menu(
                                          constraints: BoxConstraints(
                                              minHeight: 50,
                                              maxHeight: 200
                                          ),
                                        ),
                                        dropdownDecoratorProps: DropDownDecoratorProps(
                                            baseStyle: TextStyle(
                                                color: _firstDrop == 'Pass'?Colors.green:Colors.red
                                            ),
                                            dropdownSearchDecoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )
                                              ),
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
                                          _firstDrop = val.toString();
                                          setState(() {

                                          });
                                        },
                                      )

                                    ],
                                  )),
                                  SizedBox(width: 30,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        style: Theme.of(context).textTheme.subtitle2,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        controller: TextEditingController()..text,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                        ),
                                        onChanged: (value) {
                                        },
                                      )

                                    ],
                                  )),
                                  SizedBox(width: 10,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DropdownSearch<String>(
                                        items: _result,
                                        selectedItem: _secondDrop,
                                        popupProps: PopupProps.menu(
                                          constraints: BoxConstraints(
                                              minHeight: 50,
                                              maxHeight: 200
                                          ),
                                        ),
                                        dropdownButtonProps: DropdownButtonProps(
                                            constraints: BoxConstraints(minHeight: 52),

                                            icon:Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.black,
                                              size: 15,
                                            )
                                        ),
                                        dropdownDecoratorProps: DropDownDecoratorProps(
                                            baseStyle: TextStyle(
                                                color: _secondDrop == 'Pass'?Colors.green:Colors.red
                                            ),
                                            dropdownSearchDecoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )
                                              ),
                                            )
                                        ),
                                        onChanged: (val){
                                          _secondDrop = val.toString();
                                          setState(() {

                                          });
                                        },
                                      )

                                    ],
                                  )),
                                  SizedBox(width: 30,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        style: Theme.of(context).textTheme.subtitle2,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        controller: TextEditingController()..text,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                        ),
                                        onChanged: (value) {
                                        },
                                      )

                                    ],
                                  )),
                                  SizedBox(width: 10,),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DropdownSearch<String>(
                                        items: _result,
                                        selectedItem: _thirdDrop,
                                        popupProps: PopupProps.menu(
                                          constraints: BoxConstraints(
                                              minHeight: 50,
                                              maxHeight: 200
                                          ),
                                        ),
                                        dropdownButtonProps: DropdownButtonProps(
                                            constraints: BoxConstraints(minHeight: 52),

                                            icon:Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.black,
                                              size: 15,
                                            )
                                        ),
                                        dropdownDecoratorProps: DropDownDecoratorProps(
                                            baseStyle: TextStyle(
                                                color: _thirdDrop == 'Pass'?Colors.green:Colors.red
                                            ),
                                            dropdownSearchDecoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  )
                                              ),
                                            )
                                        ),
                                        onChanged: (val){
                                          _thirdDrop = val.toString();
                                          setState(() {

                                          });
                                        },
                                      )

                                    ],
                                  )),
                                ],
                              )
                            ],
                          )
                        ],)),),
                    Divider()
                  ],
                );
*/

                    return machineAdjustmentList(
                        context, _machineAdjustmentList[dataIndex], dataIndex);
                  },
                ),
              ],
            )));
  }

  Widget machineAdjustmentList(BuildContext context,
      MachineAdjustmentModel machineAdjustmentModel, int index) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 16.0),
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
                            value: machineAdjustmentModel.checkBox ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  machineAdjustmentModel.checkBox = newValue!);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 16.0),
                        child: Text(
                          'NA',
                          style: TextStyle(fontSize: Constants.fontSize_16),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'if N/A remaining fields may be left blank',
                            style: TextStyle(
                                fontSize: Constants.fontSize_16,
                                color: Colors.black26),
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(machineAdjustmentModel.madeTitle,
                        textAlign: TextAlign.start),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                style: Theme.of(context).textTheme.subtitle2,
                                keyboardType: TextInputType.number,
                                // canRequestFocus: false,
                                textInputAction: TextInputAction.next,
                                // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                controller: TextEditingController()
                                  ..text = machineAdjustmentModel.firstTime,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                                ),
                                onChanged: (value) {
                                  machineAdjustmentModel.firstTime = value;
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTime",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeS",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeT",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeF",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                },
                                onTap: () {
                                  machineAdjustmentModel.firstTime =
                                      CustomFunctions().currentTime();
                                  CustomFunctions().currentTime();
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTime",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeS",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeT",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }

                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstTimeF",
                                          machineAdjustmentModel.firstTime);
                                    }

                                    func();
                                  }

                                  setState(() {});
                                },
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownSearch<String>(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                items: _result,
                                selectedItem:
                                    machineAdjustmentModel.firstResult,
                                popupProps: const PopupProps.menu(
                                  constraints: BoxConstraints(
                                      minHeight: 50, maxHeight: 200),
                                ),
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                    baseStyle: TextStyle(
                                        color: machineAdjustmentModel
                                                    .firstResult ==
                                                'Pass'
                                            ? Colors.green
                                            : machineAdjustmentModel
                                                        .firstResult ==
                                                    'Fail'
                                                ? Colors.red
                                                : Colors.black,
                                        overflow: TextOverflow.ellipsis),
                                    dropdownSearchDecoration:
                                        const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      )),
                                    )),
                                dropdownButtonProps: const DropdownButtonProps(
                                  constraints: BoxConstraints(minHeight: 52),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                                onChanged: (val) {
                                  machineAdjustmentModel.firstResult =
                                      val.toString();
                                  setState(() {});
                                  
                                  if (index == 0) {
                                    func() async {
                                    
                                  prefs = await SharedPreferences.getInstance();
                                  prefs!.setString("firstResult",
                                       machineAdjustmentModel.firstResult.toString());
                                  }
                                func();
                                  }

                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstResultS",
                                          machineAdjustmentModel.firstResult);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstResultT",
                                          machineAdjustmentModel.firstResult);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("firstResultF",
                                          machineAdjustmentModel.firstResult);
                                    }

                                    func();
                                  }
                                  
                                  setState(() {});
                                },
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                style: Theme.of(context).textTheme.subtitle2,
                                keyboardType: TextInputType.number,
                                // canRequestFocus: false,
                                textInputAction: TextInputAction.next,
                                // inputFormatters: [
                                //   FilteringTextInputFormatter.digitsOnly
                                // ],
                                controller: TextEditingController()
                                  ..text = machineAdjustmentModel.secondTime,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                                ),
                                onTap: () {
                                  machineAdjustmentModel.secondTime =
                                      CustomFunctions().currentTime();

                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTime",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeS",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeT",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeF",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  setState(() {});
                                },
                                onChanged: (value) {
                                  machineAdjustmentModel.secondTime = value;

                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTime",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeS",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeT",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondTimeF",
                                          machineAdjustmentModel.secondTime);
                                    }

                                    func();
                                  }
                                },
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownSearch<String>(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                items: _result,
                                selectedItem:
                                    machineAdjustmentModel.secondResult,
                                popupProps: const PopupProps.menu(
                                  constraints: BoxConstraints(
                                      minHeight: 50, maxHeight: 200),
                                ),
                                dropdownButtonProps: const DropdownButtonProps(
                                    constraints: BoxConstraints(minHeight: 52),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                      size: 15,
                                    )),
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                    baseStyle: TextStyle(
                                        color: machineAdjustmentModel
                                                    .secondResult ==
                                                'Pass'
                                            ? Colors.green
                                            : machineAdjustmentModel
                                                        .secondResult ==
                                                    'Fail'
                                                ? Colors.red
                                                : Colors.black,
                                        overflow: TextOverflow.ellipsis),
                                    dropdownSearchDecoration:
                                        const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      )),
                                    )),
                                onChanged: (val) {
                                  machineAdjustmentModel.secondResult =
                                      val.toString();
                                  setState(() {});
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondResult",
                                          machineAdjustmentModel.secondResult);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondResultS",
                                          machineAdjustmentModel.secondResult);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondResultT",
                                          machineAdjustmentModel.secondResult);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("secondResultF",
                                          machineAdjustmentModel.secondResult);
                                    }

                                    func();
                                  }
                                },
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                // canRequestFocus: false,
                                style: Theme.of(context).textTheme.subtitle2,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                // inputFormatters: [
                                //   FilteringTextInputFormatter.digitsOnly
                                // ],
                                controller: TextEditingController()
                                  ..text = machineAdjustmentModel.thirdTime,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                                ),
                                onChanged: (value) {
                                  machineAdjustmentModel.thirdTime = value;
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTime",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeS",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeT",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeF",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                },
                                onTap: () {
                                  machineAdjustmentModel.thirdTime =
                                      CustomFunctions().currentTime();
                                  setState(() {});
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTime",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeS",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeT",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdTimeF",
                                          machineAdjustmentModel.thirdTime);
                                    }

                                    func();
                                  }
                                },
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownSearch<String>(
                                enabled: machineAdjustmentModel.checkBox
                                    ? false
                                    : true,
                                items: _result,
                                selectedItem:
                                    machineAdjustmentModel.thirdResult,
                                popupProps: const PopupProps.menu(
                                  constraints: BoxConstraints(
                                      minHeight: 50, maxHeight: 200),
                                ),
                                dropdownButtonProps: const DropdownButtonProps(
                                    constraints: BoxConstraints(minHeight: 52),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                      size: 15,
                                    )),
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                    baseStyle: TextStyle(
                                        color: machineAdjustmentModel
                                                    .thirdResult ==
                                                'Pass'
                                            ? Colors.green
                                            : machineAdjustmentModel
                                                        .thirdResult ==
                                                    'Fail'
                                                ? Colors.red
                                                : Colors.black,
                                        overflow: TextOverflow.ellipsis),
                                    dropdownSearchDecoration:
                                        const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      )),
                                    )),
                                onChanged: (val) {
                                  machineAdjustmentModel.thirdResult =
                                      val.toString();
                                  if (index == 0) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdResult",
                                          machineAdjustmentModel.thirdResult);
                                    }

                                    func();
                                  }
                                  if (index == 1) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdResultS",
                                          machineAdjustmentModel.thirdResult);
                                    }

                                    func();
                                  }
                                  if (index == 2) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdResultT",
                                          machineAdjustmentModel.thirdResult);
                                    }

                                    func();
                                  }
                                  if (index == 3) {
                                    func() async {
                                      prefs =
                                          await SharedPreferences.getInstance();
                                      prefs!.setString("thirdResultF",
                                          machineAdjustmentModel.thirdResult);
                                    }

                                    func();
                                  }
                                  setState(() {});
                                },
                              )
                            ],
                          )),
                        ],
                      )
                    ],
                  )
                ],
              )),
        ),
        const Divider()
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
