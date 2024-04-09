import 'package:auto_size_text/auto_size_text.dart';
import 'package:embecta/comments/comments_widget.dart';
import 'package:embecta/face_id/face_id_widget.dart';
import 'package:embecta/inspection/inspection_widget.dart';
import 'package:embecta/machine_adjustment/machine_adjustment_widget.dart';
import 'package:embecta/material_indicator.dart';
import 'package:embecta/models/home_page_model.dart';
import 'package:embecta/quality_check/quality_check_widget.dart';
import 'package:embecta/shift_details/shift_details_widget.dart';
import 'package:embecta/udi/udi_widget.dart';
import 'package:embecta/utils/constants.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int selectedTab = 0;
  String userName = "Peter";
  DateTime currentDateAndTime = DateTime.now();
  String _currentDT = "";
  bool isCheckIn = true;
  HomePageModel homePageModel = HomePageModel();
  late SharedPreferences prefs;
  bool tab1 = false;
  bool tab2 = false;
  bool tab3 = false;
  bool tab4 = false;
  bool tab5 = false;

  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this, initialIndex: 0);
    _controller?.index = 0;
    final DateFormat formatter = DateFormat('yMMMMEEEEd');
    _currentDT = formatter.format(currentDateAndTime);
    onTap(0);
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
              padding: EdgeInsets.fromLTRB(
                16.0,
                10.0,
                16.0,
                10.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Image.asset("assets/images/embecta.png"),
                  ),
                  Spacer(),
                  if (isCheckIn)
                    SizedBox(
                      /*height: _deviceSize.height * 0.04,
                      width: _deviceSize.width * 0.15,*/
                      child: ElevatedButton(
                          onPressed: () {
                            print("valueeee ${homePageModel.HSDescription}");
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return FaceIdWidget();
                              },
                            ));
                          },
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
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white
                    ),
                    child:
                    //backgroundImage:
                        Image.asset("assets/images/memebr.png"),
                    //backgroundColor: Colors.grey,
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
              //height: _deviceSize.height * 0.14,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    //const Spacer(),
                    if (isCheckIn) ...[
                      Row(
                        children: [
                          SizedBox(
                            /*height: _deviceSize.height * 0.04,
                        width: _deviceSize.width * 0.12,*/
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
                            width: 5,
                          ),
                          SizedBox(
                            /*height: _deviceSize.height * 0.04,
                        width: _deviceSize.width * 0.15,*/
                            child: ElevatedButton(
                                onPressed: () async{
                                  await getTabStatus();
                                  if(tab1 && tab2 && tab3 && tab4){
                                    prefs = await SharedPreferences.getInstance();
                                    prefs.clear();
                                    prefs.commit();
                                    CustomFunctions().showAlertDialog(context,
                                        'PDF will be generated shortly', true);
                                  }
                                  /*prefs = await SharedPreferences.getInstance();
                                  prefs.clear();
                                  prefs.commit();*/
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
                                      return _purpleColor;
                                    },
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      tab1 && tab2 && tab3 && tab4?"Submit":"Save as Draft",
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
                            width: 5,
                          ),
                          /*SizedBox(
                            *//*height: _deviceSize.height * 0.04,
                        width: _deviceSize.width * 0.15,*//*
                            child: ElevatedButton(
                                onPressed: () {
                                  CustomFunctions().showAlertDialog(context,
                                      'PDF will be generated shortly', true);
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
                                      return _purpleColor;
                                    },
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Submit",
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
                            width: 5,
                          ),*/
                          Icon(
                            Icons.more_vert,
                            color: _purpleColor,
                          )
                        ],
                      ),
                      /*const SizedBox(
                        width: 10,
                      ),*/
                    ],
                    if (!isCheckIn)
                      SizedBox(
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
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
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
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Machine Parameters',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'UDI',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Quality Check',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Comments',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Guidelines',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: Constants.fontFamily,
                              color: Colors.black,
                              fontSize: Constants.tabsize,
                              fontWeight: FontWeight.w600),
                        ),
                      ],

                      onTap: (value) async{
                        prefs = await SharedPreferences.getInstance();

                        print("value $value");
                        onTap(value);

                      },
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: _controller, children: [
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: ShiftDetailsWidget(
                              appData: homePageModel,
                              //callback:(value){},
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: MachineAdjustmentWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: UDIWidget()),
                        Container(
                            height: MediaQuery.of(context).size.height - 50,
                            child: QualityCheckWidget(
                              controller: _controller,
                              homePageModel: homePageModel,
                            )),
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

  Future<void> openStatus() async{
    await getTabStatus();


  }

  Future<void> getTabStatus() async{

    tab1 = false;
    tab2 = false;
    tab3 = false;
    tab4 = false;
    tab5 = false;


    //Shift Details
    String _selectShift = prefs.getString('selectshift')??'';
    String _selectDate = prefs.getString('datePickerTF')??'';
    String _addMaterial = prefs.getString('material')??'';
    String _addBatchNo = prefs.getString('batchNumberController')??'';
    String _machineId = prefs.getString('selectMachineId')??'';
    String _packageSpec = prefs.getString('packageSpecController')??'';
    String _addMaterialDesc = prefs.getString('description')??'';

    //Machine Adjustment
    String _firstTime = prefs.getString('firstTime')??'';
    String _firstTimeS = prefs.getString('firstTimeS')??'';
    String _firstTimeT = prefs.getString('firstTimeT')??'';
    String _firstTimeF = prefs.getString('firstTimeF')??'';
    String _firstResult = prefs.getString('firstResult')??'';
    String _firstResultS = prefs.getString('firstResultS')??'';
    String _firstResultT = prefs.getString('firstResultT')??'';
    String _firstResultF = prefs.getString('firstResultF')??'';

    String _secondTime = prefs.getString('secondTime')??'';
    String _secondTimeS = prefs.getString('secondTimeS')??'';
    String _secondTimeT = prefs.getString('secondTimeT')??'';
    String _secondTimeF = prefs.getString('secondTimeF')??'';
    String _secondResult = prefs.getString('secondResult')??'';
    String _secondResultS = prefs.getString('secondResultS')??'';
    String _secondResultT = prefs.getString('secondResultT')??'';
    String _secondResultF = prefs.getString('secondResultF')??'';

    String _thirdTime = prefs.getString('thirdTime')??'';
    String _thirdTimeS = prefs.getString('thirdTimeS')??'';
    String _thirdTimeT = prefs.getString('thirdTimeT')??'';
    String _thirdTimeF = prefs.getString('thirdTimeF')??'';
    String _thirdResult = prefs.getString('thirdResult')??'';
    String _thirdResultS = prefs.getString('thirdResultS')??'';
    String _thirdResultT = prefs.getString('thirdResultT')??'';
    String _thirdResultF = prefs.getString('thirdResultF')??'';

    String _check = prefs.getString('check')??"false";
    String _checkS = prefs.getString('checkS')??"false";
    String _checkT = prefs.getString('checkT')??"false";
    String _checkF = prefs.getString('checkF')??"false";


    //UDI
    String _printerSpeed1 = prefs.getString('ps1')??'';
    String _printerSpeed2 = prefs.getString('ps2')??'';
    String _printerSpeed3 = prefs.getString('ps3')??'';
    String _printerDelay1 = prefs.getString('pd1')??'';
    String _printerDelay2 = prefs.getString('pd2')??'';
    String _printerDelay3 = prefs.getString('pd3')??'';


    //quality Check
    String tf1 = prefs.getString('tf1')??'';
    String tf2 = prefs.getString('tf2')??'';
    String tf3 = prefs.getString('tf3')??'';
    String tf4 = prefs.getString('tf4')??'';
    String tf5 = prefs.getString('tf5')??'';
    String tf6 = prefs.getString('tf6')??'';
    String tf7 = prefs.getString('tf7')??'';
    String tf8 = prefs.getString('tf8')??'';
    String tf9 = prefs.getString('tf9')??'';
    String tf10 = prefs.getString('tf10')??'';
    String tf11 = prefs.getString('tf11')??'';
    String tf12 = prefs.getString('tf12')??'';
    String tf13 = prefs.getString('tf13')??'';
    String tf14 = prefs.getString('tf14')??'';
    String tf15 = prefs.getString('tf15')??'';
    String tf16 = prefs.getString('tf16')??'';
    String tf17 = prefs.getString('tf17')??'';
    String tf18 = prefs.getString('tf18')??'';
    String tf19 = prefs.getString('tf19')??'';
    String tf20 = prefs.getString('tf20')??'';
    String tf21 = prefs.getString('tf21')??'';
    String tf22 = prefs.getString('tf22')??'';
    String tf23 = prefs.getString('tf23')??'';
    String tf24 = prefs.getString('tf24')??'';

    String MSTF1 = prefs.getString('MSTF1')??'';

    String case1 = prefs.getString('case1')??'';
    String case2 = prefs.getString('case2')??'';
    String case3 = prefs.getString('case3')??'';
    String case4 = prefs.getString('case4')??'';
    String case5 = prefs.getString('case5')??'';
    String case6 = prefs.getString('case6')??'';
    String case7 = prefs.getString('case7')??'';
    String case8 = prefs.getString('case8')??'';
    String case9 = prefs.getString('case9')??'';
    String case10 = prefs.getString('case10')??'';
    String case11 = prefs.getString('case11')??'';
    String case12 = prefs.getString('case12')??'';
    String case13 = prefs.getString('case13')??'';
    String case14 = prefs.getString('case14')??'';
    String case15 = prefs.getString('case15')??'';
    String case16 = prefs.getString('case16')??'';
    String case17 = prefs.getString('case17')??'';
    String case18 = prefs.getString('case18')??'';
    String case19 = prefs.getString('case19')??'';
    String case20 = prefs.getString('case20')??'';
    String case21 = prefs.getString('case21')??'';
    String case22 = prefs.getString('case22')??'';
    String case23 = prefs.getString('case23')??'';
    String case24 = prefs.getString('case24')??'';

    String halfDrop1 = prefs.getString('halfDrop1')??'';
    String halfDrop2 = prefs.getString('halfDrop2')??'';
    String halfDrop3 = prefs.getString('halfDrop3')??'';
    String halfDrop4 = prefs.getString('halfDrop4')??'';
    String halfDrop5 = prefs.getString('halfDrop5')??'';
    String halfDrop6 = prefs.getString('halfDrop6')??'';
    String halfDrop7 = prefs.getString('halfDrop7')??'';
    String halfDrop8 = prefs.getString('halfDrop8')??'';
    String halfDrop9 = prefs.getString('halfDrop9')??'';
    String halfDrop10 = prefs.getString('halfDrop10')??'';
    String halfDrop11 = prefs.getString('halfDrop11')??'';
    String halfDrop12 = prefs.getString('halfDrop12')??'';
    String halfDrop13 = prefs.getString('halfDrop13')??'';
    String halfDrop14 = prefs.getString('halfDrop14')??'';
    String halfDrop15 = prefs.getString('halfDrop15')??'';
    String halfDrop16 = prefs.getString('halfDrop16')??'';
    String halfDrop17 = prefs.getString('halfDrop17')??'';
    String halfDrop18 = prefs.getString('halfDrop18')??'';
    String halfDrop19 = prefs.getString('halfDrop19')??'';
    String halfDrop20 = prefs.getString('halfDrop20')??'';
    String halfDrop21 = prefs.getString('halfDrop21')??'';
    String halfDrop22 = prefs.getString('halfDrop22')??'';
    String halfDrop23 = prefs.getString('halfDrop23')??'';
    String halfDrop24 = prefs.getString('halfDrop24')??'';

    String twohoursDrop1 = prefs.getString('twohoursDrop1')??'';
    String twohoursDrop2 = prefs.getString('twohoursDrop2')??'';
    String twohoursDrop3 = prefs.getString('twohoursDrop3')??'';
    String twohoursDrop4 = prefs.getString('twohoursDrop4')??'';
    String twohoursDrop5 = prefs.getString('twohoursDrop5')??'';
    String twohoursDrop6 = prefs.getString('twohoursDrop6')??'';

    String fourhoursDrop1 = prefs.getString('fourHoursDrop1')??'';
    String fourhoursDrop2 = prefs.getString('fourHoursDrop2')??'';
    String fourhoursDrop3 = prefs.getString('fourHoursDrop3')??'';

    print(tf1);
    print(tf2);
    print(tf3);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);
    print(tf1);


    //comments
    String QNnotno = prefs.getString('QNnotno')??'';
    String addcomm = prefs.getString('addcomm')??'';
    String signature = prefs.getString('signature')??'';
    String selectdate = prefs.getString('selectdate')??'';

    if(_selectShift != '' && _selectDate != '' && _addMaterial != '' && _addBatchNo != '' && _machineId != ''
        && _machineId != '' && _packageSpec != '' && _addMaterialDesc != ''){
      tab1 = true;
    }
    /*if(_firstTime != '' && _firstTimeS != '' && _firstTimeT != '' && _firstTimeF != '' && _firstResult != '' && _firstResultS != '' && _firstResultT != '' && _firstResultF != '' &&
        _secondTime != '' && _secondTimeS != '' && _secondTimeT != '' && _secondTimeF != '' && _secondResult != '' && _secondResultS != '' && _secondResultT != '' && _secondResultF != '' &&
        _thirdTime != '' && _thirdTimeS != '' && _thirdTimeT != '' && _thirdTimeF != '' && _thirdResult != '' && _thirdResultS != '' && _thirdResultT != '' && _thirdResultF != ''){
      tab2 = true;
    }*/

    print('_check ${_check}');
    print('_checkS ${_checkS}');
    print('_checkT ${_checkT}');
    print('_checkF ${_checkF}');

    /*if((_check!='true' && (_firstTime != '' && _firstResult != '' && _secondTime != '' && _secondResult != '' && _thirdTime != '' &&  _thirdResult != '')) &&
    (_checkS!='true' && (_firstTimeS != '' && _firstResultS != '' && _secondTimeS != '' && _secondResultS != '' && _thirdTimeS != '' &&  _thirdResultS != '')) &&
    (_checkT!='true' && (_firstTimeT != '' && _firstResultT != '' && _secondTimeT != '' && _secondResultT != '' && _thirdTimeT != '' &&  _thirdResultT != '')) &&
    (_checkF!='true' && (_firstTimeF != '' && _firstResultF != '' && _secondTimeF != '' && _secondResultF != '' && _thirdTimeF != '' &&  _thirdResultF != ''))){
      tab2 = true;
    }*/
    bool firstMachine = false;
    bool secondtMachine = false;
    bool thirdMachine = false;
    bool fourMachine = false;
    if(_check == 'true' || (_check=='false' && (_firstTime != '' && _firstResult != '' && _secondTime != '' && _secondResult != '' && _thirdTime != '' &&  _thirdResult != ''))){
      firstMachine = true;
    }if(_checkS == 'true' || (_checkS=='false' && (_firstTimeS != '' && _firstResultS != '' && _secondTimeS != '' && _secondResultS != '' && _thirdTimeS != '' &&  _thirdResultS != ''))){
      secondtMachine = true;
    }if(_checkT == 'true' || (_checkT=='false' && (_firstTimeT != '' && _firstResultT != '' && _secondTimeT != '' && _secondResultT != '' && _thirdTimeT != '' &&  _thirdResultT != ''))){
      thirdMachine = true;
    }if(_checkF == 'true' || (_checkF=='false' && (_firstTimeF != '' && _firstResultF != '' && _secondTimeF != '' && _secondResultF != '' && _thirdTimeF != '' &&  _thirdResultF != ''))){
      fourMachine = true;
    }

    print('firstMachine ${firstMachine}');
    print('secondtMachine ${secondtMachine}');
    print('thirdMachine ${thirdMachine}');
    print('fourMachine ${fourMachine}');

    if(firstMachine && secondtMachine && thirdMachine && fourMachine){
      tab2 = true;
    }
    if(_printerSpeed1 != '' && _printerSpeed2 != '' && _printerSpeed3 != '' &&
        _printerDelay1 != '' && _printerDelay2 != '' && _printerDelay3 != ''){
      tab3 = true;
    }
    if(tf1 != '' && tf2 != '' && tf3 != '' && tf4 != '' && tf5 != '' && tf6 != '' && tf7 != '' && tf8 != '' && tf9 != '' && tf10 != '' && tf11 != '' && tf12 != '' &&
        tf13 != '' && tf14 != '' && tf15 != '' && tf16 != '' && tf17 != '' && tf18 != '' && tf19 != '' && tf20 != '' && tf21 != '' && tf22 != '' && tf23 != '' && tf24 != '' &&
        case1 != '' && case2 != '' && case3 != '' && case4 != '' && case5 != '' && case6 != '' && case7 != '' && case8 != '' && case9 != '' && case10 != '' && case11 != '' && case12 != '' &&
        case13 != '' && case14 != '' && case15 != '' && case16 != '' && case17 != '' && case18 != '' && case19 != '' && case20 != '' && case21 != '' && case22 != '' && case23 != '' && case24 != '' &&
        halfDrop1 != '' && halfDrop2 != '' && halfDrop3 != '' && halfDrop4 != '' && halfDrop5 != '' && halfDrop6 != '' && halfDrop7 != '' && halfDrop8 != '' && halfDrop9 != '' && halfDrop10 != '' && halfDrop11 != '' && halfDrop12 != '' &&
        halfDrop13 != '' && halfDrop14 != '' && halfDrop15 != '' && halfDrop16 != '' && halfDrop17 != '' && halfDrop18 != '' && halfDrop19 != '' && halfDrop20 != '' && halfDrop21 != '' && halfDrop22 != '' && halfDrop23 != '' && halfDrop24 != '' &&
        twohoursDrop1 != '' && twohoursDrop2 != '' && twohoursDrop3 != '' && twohoursDrop4 != '' && twohoursDrop5 != '' && twohoursDrop6 != '' &&
        fourhoursDrop1 != '' && fourhoursDrop2 != '' && fourhoursDrop3 != '' && MSTF1 != '')
    {
      tab4 = true;
    }
    if(QNnotno != '' && addcomm != '' && signature != '' && selectdate != ''){
      tab5 = true;
    }

    print("tab1 $tab1");
    print("tab2 $tab2");
    print("tab3 $tab3");
    print("tab4 $tab4");
    print("tab5 $tab5");
    print("tab1 $tab1");

    if(tab1 && !tab2 && !tab3 && !tab4 && !tab5){
      selectedTab = 1;
    }
    else if(tab1 && tab2 && !tab3 && !tab4 && !tab5){
      selectedTab = 2;
    }
    else if(tab1 && tab2 && tab3 && !tab4 && !tab5){
      selectedTab = 3;
    }
    else if(tab1 && tab2 && tab3 && tab4 && !tab5){
      selectedTab = 4;
    }
    else if(tab1 && tab2 && tab3 && tab4 && tab5){
      selectedTab = 5;
    }
    else{
      selectedTab = 0;
    }

    setState(() {

    });
  }

  Future<void> onTap(int value) async{
    prefs = await SharedPreferences.getInstance();

    await getTabStatus();
    if(!tab1/* && !tab2 && !tab3 && !tab4 && !tab5*/){
      selectedTab = 0;
      if(value<=0){
        _controller?.index = value;
      }
      else{
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Shift Details before proceeding to next'
            , false);
        _controller?.index = 0;
      }
    }
    else if(/*tab1 && */!tab2/* && !tab3 && !tab4 && !tab5*/){
      selectedTab = 1;
      if(value<=1){
        _controller?.index = value;
      }
      else{
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Machine Parameter before proceeding to next'
            , false);
        _controller?.index = 1;
      }
    }
    else if(/*tab1 && tab2 && */!tab3/* && !tab4 && !tab5*/){
      selectedTab = 2;
      if(value <= 2){
        _controller?.index = value;
      }
      else{
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in UDI before proceeding to next'
            , false);
        _controller?.index = 2;
      }
    }
    else if(/*tab1 && tab2 && tab3 && */!tab4/* && !tab5*/){
      selectedTab = 3;
      if(value <= 3){
        _controller?.index = value;
      }
      else{
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Quality Check before proceeding to next'
            , false);
        _controller?.index = 3;

      }
    }
    else if(/*tab1 && tab2 && tab3 && tab4 && */!tab5){
      selectedTab = 4;
      if(value <= 4){
        _controller?.index = value;
      }
      else{
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in comments before proceeding to next'
            , false);
        _controller?.index = 4;
      }
    }
    /*else if(tab1 && tab2 && tab3 && tab4 && tab5){
      selectedTab = 5;
      if(value <= 5){
        _controller?.index = value;
      }
    }*/
    else{
      //selectedTab = 0;
      _controller?.index = value;
    }


      /*if(selectedTab == 0 && !tab1){
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Shift Details before proceeding to next'
            , false);
        _controller?.index = 0;
        setState(() {
          selectedTab = 0;
        });
      }
      else if(selectedTab == 1 && !tab2)
      {
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Machine Parameter before proceeding to next'
            , false);
        _controller?.index = 1;
        setState(() {
          selectedTab = 1;
        });
      }
      else if(selectedTab == 2 && !tab3)
      {
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in UDI before proceeding to next'
            , false);
        _controller?.index = 2;
        setState(() {
          selectedTab = 2;
        });

      }
      else if(selectedTab == 3 && !tab4)
      {
        CustomFunctions().showAlertDialog(context,
            'Fill all the fields in Quality Check before proceeding to next'
            , false);
        _controller?.index = 3;
        setState(() {
          selectedTab = 3;
        });
      }
      else if(selectedTab == 4 && !tab5)
      {
        _controller?.index = 4;
        setState(() {
          selectedTab = 4;
        });
      }
      else
      {
        print('showalertdialog');

      }*/


  }
}
