import 'package:auto_size_text/auto_size_text.dart';
import 'package:embecta/comments/comments_widget.dart';
import 'package:embecta/inspection/inspection_widget.dart';
import 'package:embecta/machine_adjustment/machine_adjustment_widget.dart';
import 'package:embecta/material_indicator.dart';
import 'package:embecta/quality_check/quality_check_widget.dart';
import 'package:embecta/shift_details/shift_details_widget.dart';
import 'package:embecta/udi/udi_widget.dart';
import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int selectedTab = 3;
  String userName = "Peter";
  DateTime currentDateAndTime = DateTime.now();
  String _currentDT = "";
  bool isCheckIn = false;

  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this, initialIndex: 0);
    _controller?.index = 3;
    final DateFormat formatter = DateFormat('yMMMMEEEEd');
    _currentDT = formatter.format(currentDateAndTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    final _purpleColor = Colors.purple.shade900;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body:
            /*if(selectedTab == 0)
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),*/
            Column(
          children: [
            Container(
              height: _deviceSize.height * 0.07,
              padding: EdgeInsets.fromLTRB(
                16.0,
                10.0,
                16.0,
                10.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 120,
                    child: Image.asset("assets/images/embecta.png"),
                  ),
                  Spacer(),
                  if (isCheckIn)
                    SizedBox(
                      height: _deviceSize.height * 0.04,
                      width: _deviceSize.width * 0.15,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (states) {
                                return Colors.green;
                              },
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Clock Out",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )),
                    ),
                  if (isCheckIn)
                    SizedBox(
                      width: 10.0,
                    ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                16.0,
                10.0,
                16.0,
                10.0,
              ),
              padding: EdgeInsets.all(16.0),
              height: _deviceSize.height * 0.14,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: _deviceSize.width * 0.4,
                          child: AutoSizeText(
                            "Welcome $userName",
                            style: GoogleFonts.roboto(
                                fontSize: 16.0,
                                color: _purpleColor,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: _deviceSize.width * 0.4,
                          child: AutoSizeText(
                            _currentDT.toString(),
                            style: GoogleFonts.roboto(
                                fontSize: 20.0,
                                color: _purpleColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    if (isCheckIn) ...[
                      SizedBox(
                        height: _deviceSize.height * 0.04,
                        width: _deviceSize.width * 0.12,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) {
                                  return _purpleColor.withOpacity(0.6);
                                },
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cancel",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        height: _deviceSize.height * 0.04,
                        width: _deviceSize.width * 0.15,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) {
                                  return _purpleColor;
                                },
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Save as Draft",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: _purpleColor,
                      )
                    ],
                    if (!isCheckIn)
                      SizedBox(
                        height: _deviceSize.height * 0.07,
                        width: _deviceSize.width * 0.12,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isCheckIn = !isCheckIn;
                              });
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) {
                                  // If the button is pressed, return green, otherwise blue
                                  // if (states.contains(MaterialState.pressed)) {
                                  //   return Colors.blue;
                                  // }
                                  return Colors.blue;
                                },
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Clock In",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ),
                  ]),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    TabBar(
                      controller: _controller,
                      isScrollable: false,
                      labelColor: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.blueAccent
                          : Colors.blueAccent,
                      unselectedLabelColor:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark
                              ? null
                              : Colors.blueAccent,
                      indicatorSize: TabBarIndicatorSize.label,

                      unselectedLabelStyle: TextStyle(
                          fontFamily: 'Nova',
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),

                      labelPadding: EdgeInsets.only(
                          left: 20,
                          right: 25,
                          bottom: 5,
                          top: 10), //// TabBarIndicatorSize.label,
                      indicator: MaterialDesignIndicator(
                          indicatorHeight: 4,
                          indicatorColor: Colors.blueAccent),
                      tabs: [
                        Text(
                          'Shift Details',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 0 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Machine Adjustment',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 1 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'UDI',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 2 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Quality Check',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 3 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Comments',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 4 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Guidelines',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color:
                                  selectedTab == 5 ? Colors.blue : Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                      ],

                      onTap: (value) {
                        setState(() {
                          selectedTab = value;
                        });
                      },
                    ),
                    Expanded(
                      child: TabBarView(controller: _controller, children: [
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: ShiftDetailsWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: MachineAdjustmentWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: UDIWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: QualityCheckWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: CommentsWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: InspectionWidget()),
                        /*Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
                  Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
                  Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
                  Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget())*/ /*,*/
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
