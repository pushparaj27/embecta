import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UDIWidget extends StatefulWidget {
  const UDIWidget({Key? key}) : super(key: key);

  @override
  _UDIWidgetState createState() => _UDIWidgetState();
}

class _UDIWidgetState extends State<UDIWidget>
    with AutomaticKeepAliveClientMixin<UDIWidget> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  String _printerSpeed1 = '';
  String _printerSpeed2 = '';
  String _printerSpeed3 = '';
  String _printerDelay1 = '';
  String _printerDelay2 = '';
  String _printerDelay3 = '';
  late FocusNode myFocusNode1;
  late FocusNode myFocusNode2;
  late FocusNode myFocusNode3;
  late FocusNode myFocusNode4;
  late FocusNode myFocusNode5;
  late FocusNode myFocusNode6;
  SharedPreferences? prefs;
  bool valiid1 = false;
  @override
  void initState() {
    super.initState();
    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
    myFocusNode3 = FocusNode();
    myFocusNode4 = FocusNode();
    myFocusNode5 = FocusNode();
    myFocusNode6 = FocusNode();
     SchedulerBinding.instance.addPostFrameCallback((_) async {
 prefs = await SharedPreferences.getInstance();
     _printerSpeed1 =
          prefs!.getString("ps1").toString().isEmpty ||
                  prefs!.getString("ps1").toString() == 'null'
              ?_printerSpeed1
              : prefs!.getString("ps1").toString();

                _printerDelay1 =
          prefs!.getString("ps2").toString().isEmpty ||
                  prefs!.getString("ps2").toString() == 'null'
              ?_printerDelay1
              : prefs!.getString("ps2").toString();

                _printerSpeed2 =
          prefs!.getString("ps3").toString().isEmpty ||
                  prefs!.getString("ps3").toString() == 'null'
              ?_printerSpeed2
              : prefs!.getString("ps3").toString();

                _printerDelay2 =
          prefs!.getString("ps4").toString().isEmpty ||
                  prefs!.getString("ps4").toString() == 'null'
              ?_printerDelay2
              : prefs!.getString("ps4").toString();

                _printerSpeed3 =
          prefs!.getString("ps5").toString().isEmpty ||
                  prefs!.getString("ps5").toString() == 'null'
              ?_printerSpeed3
              : prefs!.getString("ps5").toString();

                _printerDelay3 =
          prefs!.getString("ps6").toString().isEmpty ||
                  prefs!.getString("ps6").toString() == 'null'
              ?_printerDelay3
              : prefs!.getString("ps6").toString();
     });
   
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                  child: Text('REF.MD700753',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Constants.fontSize_18)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text('Line 6 only'),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Speed',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                          focusNode: myFocusNode1,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          controller: TextEditingController()
                                            ..text = _printerSpeed1,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                              errorMaxLines: 3),
                                          onChanged: (val) {
                                            _printerSpeed1 = val;
                                            func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps1",_printerSpeed1.toString());
                                              }
                                                  func();
                                          },
                                          validator: (value) {
                                            if (value != '') {
                                              final currentLength =
                                                  int.parse(value!);
                                              if (!(currentLength >= 80 &&
                                                  currentLength <= 200)) {
                                                return "Enter numbers between 80 and 200.";
                                              }
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('80',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('200',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Delay',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                          focusNode: myFocusNode2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          controller: TextEditingController()
                                            ..text = _printerDelay1,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                              errorMaxLines: 3),
                                          onChanged: (val) {
                                            _printerDelay1 = val;
                                             func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps2",_printerDelay1.toString());
                                              }
                                              func();

                                          },
                                          validator: (value) {
                                            if (value != '') {
                                              final currentLength =
                                                  int.parse(value!);
                                              if (!(currentLength >= 15 &&
                                                  currentLength <= 25)) {
                                                return "Enter numbers between 15 and 25.";
                                              }
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('15',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('25',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                  child: Text('REF.MD700753',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Constants.fontSize_18)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text('Line 8 only'),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Speed',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                          focusNode: myFocusNode3,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: TextEditingController()
                                            ..text = _printerSpeed2,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                              errorMaxLines: 3),
                                          onChanged: (val) {
                                            _printerSpeed2 = val;
                                            func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps3",_printerSpeed2.toString());
                                              }
                                              func();
                                          },
                                          validator: (value) {
                                            if (value != '') {
                                              final currentLength =
                                                  int.parse(value!);
                                              if (!(currentLength >= 80 &&
                                                  currentLength <= 200)) {
                                                return "Enter numbers between 80 and 200.";
                                              }
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('80',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('200',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Delay',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                          focusNode: myFocusNode4,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          controller: TextEditingController()
                                            ..text = _printerDelay2,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                              errorMaxLines: 3),
                                          onChanged: (val) {
                                            _printerDelay2 = val;
                                            func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps4",_printerDelay2.toString());
                                              }
                                              func();
                                          },
                                          validator: (value) {
                                            if (value != '') {
                                              final currentLength =
                                                  int.parse(value!);
                                              if (!(currentLength >= 15 &&
                                                  currentLength <= 25)) {
                                                return "Enter numbers between 15 and 25.";
                                              }
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('15',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('25',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                  child: Text('MD700335/MD700599',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Constants.fontSize_18)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text('0.3ML only'),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Speed',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                            focusNode: myFocusNode5,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            keyboardType: TextInputType.number,
                                            textInputAction:
                                                TextInputAction.next,
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: TextEditingController()
                                              ..text = _printerSpeed3,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(5),
                                                )),
                                                errorMaxLines: 3),
                                            onChanged: (val) {
                                              _printerSpeed3 = val;
                                              func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps5",_printerSpeed3.toString());
                                              }
                                              func();
                                            },
                                            validator: (value) {
                                              if (value != '') {
                                                final currentLength =
                                                    int.parse(value!);
                                                if (!(currentLength >= 80 &&
                                                    currentLength <= 200)) {
                                                  return "Enter numbers between 80 and 200.";
                                                }
                                              }

                                              return null;
                                            }),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('80',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('200',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 5),
                                        child: Text(
                                          'Printer Delay',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 5, bottom: 5),
                                        child: TextFormField(
                                            focusNode: myFocusNode6,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            keyboardType: TextInputType.number,
                                            textInputAction:
                                                TextInputAction.next,
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: TextEditingController()
                                              ..text = _printerDelay3,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                  Radius.circular(5),
                                                )),
                                                errorMaxLines: 3),
                                            onChanged: (val) {
                                              _printerDelay3 = val;
                                              func() async {
                                              prefs = await SharedPreferences.getInstance();
                                              prefs!.setString("ps6",_printerDelay3.toString());
                                              }
                                              func();
                                            },
                                            validator: (value) {
                                              if (value != '') {
                                                final currentLength =
                                                    int.parse(value!);
                                                if (!(currentLength >= 15 &&
                                                    currentLength <= 25)) {
                                                  return "Enter numbers between 15 and 25.";
                                                }
                                              }

                                              return null;
                                            }),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('Range',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize:
                                                        Constants.fontSize_12)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.blueAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('15',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, top: 5, bottom: 5),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.redAccent,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: Text('25',
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize:
                                                        Constants.fontSize_10,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]))
            ])));
  }
}
