import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/models/home_page_model.dart';
import 'package:embecta/quality_check/quality_check_model.dart';
import 'package:embecta/utils/constants.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  SharedPreferences? prefs;
  bool? check1 = false;
  QualityCheckModel? _qualityCheckModel;

  @override
  void initState() {
    _qualityCheckModel = QualityCheckModel();
    _qualityCheckModel!.initTextController();
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      prefs = await SharedPreferences.getInstance();
      _qualityCheckModel!.timeTF1!.text =
          prefs!.getString("tf1").toString().isEmpty ||
                  prefs!.getString("tf1").toString() == 'null'
              ? _qualityCheckModel!.timeTF1!.text
              : prefs!.getString("tf1").toString();

      _qualityCheckModel!.timeTF2!.text =
          prefs!.getString("tf2").toString().isEmpty ||
                  prefs!.getString("tf2").toString() == 'null'
              ? _qualityCheckModel!.timeTF2!.text
              : prefs!.getString("tf2").toString();

      _qualityCheckModel!.timeTF3!.text =
          prefs!.getString("tf3").toString().isEmpty ||
                  prefs!.getString("tf3").toString() == 'null'
              ? _qualityCheckModel!.timeTF3!.text
              : prefs!.getString("tf3").toString();

      _qualityCheckModel!.timeTF4!.text =
          prefs!.getString("tf4").toString().isEmpty ||
                  prefs!.getString("tf4").toString() == 'null'
              ? _qualityCheckModel!.timeTF4!.text
              : prefs!.getString("tf4").toString();

      _qualityCheckModel!.timeTF5!.text =
          prefs!.getString("tf5").toString().isEmpty ||
                  prefs!.getString("tf5").toString() == 'null'
              ? _qualityCheckModel!.timeTF5!.text
              : prefs!.getString("tf5").toString();

      _qualityCheckModel!.timeTF6!.text =
          prefs!.getString("tf6").toString().isEmpty ||
                  prefs!.getString("tf6").toString() == 'null'
              ? _qualityCheckModel!.timeTF6!.text
              : prefs!.getString("tf6").toString();

      _qualityCheckModel!.timeTF7!.text =
          prefs!.getString("tf7").toString().isEmpty ||
                  prefs!.getString("tf7").toString() == 'null'
              ? _qualityCheckModel!.timeTF7!.text
              : prefs!.getString("tf7").toString();

      _qualityCheckModel!.timeTF8!.text =
          prefs!.getString("tf8").toString().isEmpty ||
                  prefs!.getString("tf8").toString() == 'null'
              ? _qualityCheckModel!.timeTF8!.text
              : prefs!.getString("tf8").toString();

      _qualityCheckModel!.timeTF9!.text =
          prefs!.getString("tf9").toString().isEmpty ||
                  prefs!.getString("tf9").toString() == 'null'
              ? _qualityCheckModel!.timeTF9!.text
              : prefs!.getString("tf9").toString();

      _qualityCheckModel!.timeTF10!.text =
          prefs!.getString("tf10").toString().isEmpty ||
                  prefs!.getString("tf10").toString() == 'null'
              ? _qualityCheckModel!.timeTF10!.text
              : prefs!.getString("tf10").toString();

      _qualityCheckModel!.timeTF11!.text =
          prefs!.getString("tf11").toString().isEmpty ||
                  prefs!.getString("tf11").toString() == 'null'
              ? _qualityCheckModel!.timeTF11!.text
              : prefs!.getString("tf11").toString();

      _qualityCheckModel!.timeTF12!.text =
          prefs!.getString("tf12").toString().isEmpty ||
                  prefs!.getString("tf12").toString() == 'null'
              ? _qualityCheckModel!.timeTF12!.text
              : prefs!.getString("tf12").toString();

      _qualityCheckModel!.timeTF13!.text =
          prefs!.getString("tf13").toString().isEmpty ||
                  prefs!.getString("tf13").toString() == 'null'
              ? _qualityCheckModel!.timeTF13!.text
              : prefs!.getString("tf13").toString();

      _qualityCheckModel!.timeTF14!.text =
          prefs!.getString("tf14").toString().isEmpty ||
                  prefs!.getString("tf14").toString() == 'null'
              ? _qualityCheckModel!.timeTF14!.text
              : prefs!.getString("tf14").toString();

      _qualityCheckModel!.timeTF15!.text =
          prefs!.getString("tf15").toString().isEmpty ||
                  prefs!.getString("tf15").toString() == 'null'
              ? _qualityCheckModel!.timeTF15!.text
              : prefs!.getString("tf15").toString();

      _qualityCheckModel!.timeTF16!.text =
          prefs!.getString("tf16").toString().isEmpty ||
                  prefs!.getString("tf16").toString() == 'null'
              ? _qualityCheckModel!.timeTF16!.text
              : prefs!.getString("tf16").toString();

      _qualityCheckModel!.timeTF17!.text =
          prefs!.getString("tf17").toString().isEmpty ||
                  prefs!.getString("tf17").toString() == 'null'
              ? _qualityCheckModel!.timeTF17!.text
              : prefs!.getString("tf17").toString();

      _qualityCheckModel!.timeTF18!.text =
          prefs!.getString("tf18").toString().isEmpty ||
                  prefs!.getString("tf18").toString() == 'null'
              ? _qualityCheckModel!.timeTF18!.text
              : prefs!.getString("tf18").toString();

      _qualityCheckModel!.timeTF19!.text =
          prefs!.getString("tf19").toString().isEmpty ||
                  prefs!.getString("tf19").toString() == 'null'
              ? _qualityCheckModel!.timeTF19!.text
              : prefs!.getString("tf19").toString();

      _qualityCheckModel!.timeTF20!.text =
          prefs!.getString("tf20").toString().isEmpty ||
                  prefs!.getString("tf20").toString() == 'null'
              ? _qualityCheckModel!.timeTF20!.text
              : prefs!.getString("tf20").toString();

      _qualityCheckModel!.timeTF21!.text =
          prefs!.getString("tf21").toString().isEmpty ||
                  prefs!.getString("tf21").toString() == 'null'
              ? _qualityCheckModel!.timeTF21!.text
              : prefs!.getString("tf21").toString();

      _qualityCheckModel!.timeTF22!.text =
          prefs!.getString("tf22").toString().isEmpty ||
                  prefs!.getString("tf22").toString() == 'null'
              ? _qualityCheckModel!.timeTF22!.text
              : prefs!.getString("tf22").toString();

      _qualityCheckModel!.timeTF23!.text =
          prefs!.getString("tf23").toString().isEmpty ||
                  prefs!.getString("tf23").toString() == 'null'
              ? _qualityCheckModel!.timeTF23!.text
              : prefs!.getString("tf23").toString();

      _qualityCheckModel!.timeTF24!.text =
          prefs!.getString("tf24").toString().isEmpty ||
                  prefs!.getString("tf24").toString() == 'null'
              ? _qualityCheckModel!.timeTF24!.text
              : prefs!.getString("tf24").toString();
// ==================================tf--------------------------
      _qualityCheckModel!.MSTF1!.text =
          prefs!.getString("MSTF1").toString().isEmpty ||
                  prefs!.getString("MSTF1").toString() == 'null'
              ? _qualityCheckModel!.MSTF1!.text
              : prefs!.getString("MSTF1").toString();
      // -------------------------------------------------------
      _qualityCheckModel!.case1!.text =
          prefs!.getString("case1").toString().isEmpty ||
                  prefs!.getString("case1").toString() == 'null'
              ? _qualityCheckModel!.case1!.text
              : prefs!.getString("case1").toString();

      _qualityCheckModel!.case2!.text =
          prefs!.getString("case2").toString().isEmpty ||
                  prefs!.getString("case2").toString() == 'null'
              ? _qualityCheckModel!.case2!.text
              : prefs!.getString("case2").toString();

      _qualityCheckModel!.case3!.text =
          prefs!.getString("case3").toString().isEmpty ||
                  prefs!.getString("case3").toString() == 'null'
              ? _qualityCheckModel!.case3!.text
              : prefs!.getString("case3").toString();

      _qualityCheckModel!.case4!.text =
          prefs!.getString("case4").toString().isEmpty ||
                  prefs!.getString("case4").toString() == 'null'
              ? _qualityCheckModel!.case4!.text
              : prefs!.getString("case4").toString();

      _qualityCheckModel!.case5!.text =
          prefs!.getString("case5").toString().isEmpty ||
                  prefs!.getString("case5").toString() == 'null'
              ? _qualityCheckModel!.case5!.text
              : prefs!.getString("case5").toString();

      _qualityCheckModel!.case6!.text =
          prefs!.getString("case6").toString().isEmpty ||
                  prefs!.getString("case6").toString() == 'null'
              ? _qualityCheckModel!.case6!.text
              : prefs!.getString("case6").toString();

      _qualityCheckModel!.case7!.text =
          prefs!.getString("case7").toString().isEmpty ||
                  prefs!.getString("case7").toString() == 'null'
              ? _qualityCheckModel!.case7!.text
              : prefs!.getString("case7").toString();

      _qualityCheckModel!.case8!.text =
          prefs!.getString("case8").toString().isEmpty ||
                  prefs!.getString("case8").toString() == 'null'
              ? _qualityCheckModel!.case8!.text
              : prefs!.getString("case8").toString();

      _qualityCheckModel!.case9!.text =
          prefs!.getString("case9").toString().isEmpty ||
                  prefs!.getString("case9").toString() == 'null'
              ? _qualityCheckModel!.case9!.text
              : prefs!.getString("case9").toString();

      _qualityCheckModel!.case10!.text =
          prefs!.getString("case10").toString().isEmpty ||
                  prefs!.getString("case10").toString() == 'null'
              ? _qualityCheckModel!.case10!.text
              : prefs!.getString("case10").toString();

      _qualityCheckModel!.case11!.text =
          prefs!.getString("case11").toString().isEmpty ||
                  prefs!.getString("case11").toString() == 'null'
              ? _qualityCheckModel!.case11!.text
              : prefs!.getString("case11").toString();

      _qualityCheckModel!.case12!.text =
          prefs!.getString("case12").toString().isEmpty ||
                  prefs!.getString("case12").toString() == 'null'
              ? _qualityCheckModel!.case12!.text
              : prefs!.getString("case12").toString();

      _qualityCheckModel!.case13!.text =
          prefs!.getString("case13").toString().isEmpty ||
                  prefs!.getString("case13").toString() == 'null'
              ? _qualityCheckModel!.case13!.text
              : prefs!.getString("case13").toString();

      _qualityCheckModel!.case14!.text =
          prefs!.getString("case14").toString().isEmpty ||
                  prefs!.getString("case14").toString() == 'null'
              ? _qualityCheckModel!.case14!.text
              : prefs!.getString("case14").toString();

      _qualityCheckModel!.case15!.text =
          prefs!.getString("case15").toString().isEmpty ||
                  prefs!.getString("case15").toString() == 'null'
              ? _qualityCheckModel!.case15!.text
              : prefs!.getString("case15").toString();

      _qualityCheckModel!.case16!.text =
          prefs!.getString("case16").toString().isEmpty ||
                  prefs!.getString("case16").toString() == 'null'
              ? _qualityCheckModel!.case16!.text
              : prefs!.getString("case16").toString();

      _qualityCheckModel!.case17!.text =
          prefs!.getString("case17").toString().isEmpty ||
                  prefs!.getString("case17").toString() == 'null'
              ? _qualityCheckModel!.case17!.text
              : prefs!.getString("case17").toString();

      _qualityCheckModel!.case18!.text =
          prefs!.getString("case18").toString().isEmpty ||
                  prefs!.getString("case18").toString() == 'null'
              ? _qualityCheckModel!.case18!.text
              : prefs!.getString("case18").toString();

      _qualityCheckModel!.case19!.text =
          prefs!.getString("case19").toString().isEmpty ||
                  prefs!.getString("case19").toString() == 'null'
              ? _qualityCheckModel!.case19!.text
              : prefs!.getString("case19").toString();

      _qualityCheckModel!.case20!.text =
          prefs!.getString("case20").toString().isEmpty ||
                  prefs!.getString("case120").toString() == 'null'
              ? _qualityCheckModel!.case20!.text
              : prefs!.getString("case20").toString();

      _qualityCheckModel!.case21!.text =
          prefs!.getString("case21").toString().isEmpty ||
                  prefs!.getString("case21").toString() == 'null'
              ? _qualityCheckModel!.case21!.text
              : prefs!.getString("case21").toString();

      _qualityCheckModel!.case22!.text =
          prefs!.getString("case22").toString().isEmpty ||
                  prefs!.getString("case22").toString() == 'null'
              ? _qualityCheckModel!.case22!.text
              : prefs!.getString("case22").toString();

      _qualityCheckModel!.case23!.text =
          prefs!.getString("case23").toString().isEmpty ||
                  prefs!.getString("case23").toString() == 'null'
              ? _qualityCheckModel!.case23!.text
              : prefs!.getString("case23").toString();

      _qualityCheckModel!.case24!.text =
          prefs!.getString("case24").toString().isEmpty ||
                  prefs!.getString("case24").toString() == 'null'
              ? _qualityCheckModel!.case24!.text
              : prefs!.getString("case24").toString();
      // -------------------------------------------
      _qualityCheckModel!.halfDrop1 =
          prefs!.getString("halfDrop1").toString().isEmpty ||
                  prefs!.getString("halfDrop1").toString() == 'null'
              ? _qualityCheckModel!.halfDrop1
              : prefs!.getString("halfDrop1").toString();

      _qualityCheckModel!.halfDrop2 =
          prefs!.getString("halfDrop2").toString().isEmpty ||
                  prefs!.getString("halfDrop2").toString() == 'null'
              ? _qualityCheckModel!.halfDrop2
              : prefs!.getString("halfDrop2").toString();

      _qualityCheckModel!.halfDrop3 =
          prefs!.getString("halfDrop3").toString().isEmpty ||
                  prefs!.getString("halfDrop3").toString() == 'null'
              ? _qualityCheckModel!.halfDrop3
              : prefs!.getString("halfDrop3").toString();

      _qualityCheckModel!.halfDrop4 =
          prefs!.getString("halfDrop4").toString().isEmpty ||
                  prefs!.getString("halfDrop4").toString() == 'null'
              ? _qualityCheckModel!.halfDrop4
              : prefs!.getString("halfDrop4").toString();

      _qualityCheckModel!.halfDrop5 =
          prefs!.getString("halfDrop5").toString().isEmpty ||
                  prefs!.getString("halfDrop5").toString() == 'null'
              ? _qualityCheckModel!.halfDrop1
              : prefs!.getString("halfDrop5").toString();

      _qualityCheckModel!.halfDrop6 =
          prefs!.getString("halfDrop6").toString().isEmpty ||
                  prefs!.getString("halfDrop6").toString() == 'null'
              ? _qualityCheckModel!.halfDrop6
              : prefs!.getString("halfDrop6").toString();

      _qualityCheckModel!.halfDrop7 =
          prefs!.getString("halfDrop7").toString().isEmpty ||
                  prefs!.getString("halfDrop7").toString() == 'null'
              ? _qualityCheckModel!.halfDrop7
              : prefs!.getString("halfDrop7").toString();

      _qualityCheckModel!.halfDrop8 =
          prefs!.getString("halfDrop8").toString().isEmpty ||
                  prefs!.getString("halfDrop8").toString() == 'null'
              ? _qualityCheckModel!.halfDrop8
              : prefs!.getString("halfDrop8").toString();

      _qualityCheckModel!.halfDrop9 =
          prefs!.getString("halfDrop9").toString().isEmpty ||
                  prefs!.getString("halfDrop9").toString() == 'null'
              ? _qualityCheckModel!.halfDrop9
              : prefs!.getString("halfDrop9").toString();

      _qualityCheckModel!.halfDrop10 =
          prefs!.getString("halfDrop10").toString().isEmpty ||
                  prefs!.getString("halfDrop10").toString() == 'null'
              ? _qualityCheckModel!.halfDrop10
              : prefs!.getString("halfDrop10").toString();

      _qualityCheckModel!.halfDrop11 =
          prefs!.getString("halfDrop11").toString().isEmpty ||
                  prefs!.getString("halfDrop11").toString() == 'null'
              ? _qualityCheckModel!.halfDrop11
              : prefs!.getString("halfDrop11").toString();

      _qualityCheckModel!.halfDrop12 =
          prefs!.getString("halfDrop12").toString().isEmpty ||
                  prefs!.getString("halfDrop12").toString() == 'null'
              ? _qualityCheckModel!.halfDrop12
              : prefs!.getString("halfDrop12").toString();

      _qualityCheckModel!.halfDrop13 =
          prefs!.getString("halfDrop13").toString().isEmpty ||
                  prefs!.getString("halfDrop13").toString() == 'null'
              ? _qualityCheckModel!.halfDrop13
              : prefs!.getString("halfDrop13").toString();

      _qualityCheckModel!.halfDrop14 =
          prefs!.getString("halfDrop14").toString().isEmpty ||
                  prefs!.getString("halfDrop14").toString() == 'null'
              ? _qualityCheckModel!.halfDrop14
              : prefs!.getString("halfDrop14").toString();

      _qualityCheckModel!.halfDrop15 =
          prefs!.getString("halfDrop15").toString().isEmpty ||
                  prefs!.getString("halfDrop15").toString() == 'null'
              ? _qualityCheckModel!.halfDrop15
              : prefs!.getString("halfDrop15").toString();

      _qualityCheckModel!.halfDrop16 =
          prefs!.getString("halfDrop16").toString().isEmpty ||
                  prefs!.getString("halfDrop16").toString() == 'null'
              ? _qualityCheckModel!.halfDrop16
              : prefs!.getString("halfDrop16").toString();

      _qualityCheckModel!.halfDrop17 =
          prefs!.getString("halfDrop17").toString().isEmpty ||
                  prefs!.getString("halfDrop17").toString() == 'null'
              ? _qualityCheckModel!.halfDrop17
              : prefs!.getString("halfDrop17").toString();

      _qualityCheckModel!.halfDrop18 =
          prefs!.getString("halfDrop18").toString().isEmpty ||
                  prefs!.getString("halfDrop18").toString() == 'null'
              ? _qualityCheckModel!.halfDrop18
              : prefs!.getString("halfDrop18").toString();

      _qualityCheckModel!.halfDrop19 =
          prefs!.getString("halfDrop19").toString().isEmpty ||
                  prefs!.getString("halfDrop19").toString() == 'null'
              ? _qualityCheckModel!.halfDrop19
              : prefs!.getString("halfDrop19").toString();

      _qualityCheckModel!.halfDrop20 =
          prefs!.getString("halfDrop20").toString().isEmpty ||
                  prefs!.getString("halfDrop20").toString() == 'null'
              ? _qualityCheckModel!.halfDrop20
              : prefs!.getString("halfDrop20").toString();

      _qualityCheckModel!.halfDrop21 =
          prefs!.getString("halfDrop21").toString().isEmpty ||
                  prefs!.getString("halfDrop21").toString() == 'null'
              ? _qualityCheckModel!.halfDrop21
              : prefs!.getString("halfDrop21").toString();

      _qualityCheckModel!.halfDrop22 =
          prefs!.getString("halfDrop22").toString().isEmpty ||
                  prefs!.getString("halfDrop22").toString() == 'null'
              ? _qualityCheckModel!.halfDrop22
              : prefs!.getString("halfDrop22").toString();

      _qualityCheckModel!.halfDrop23 =
          prefs!.getString("halfDrop23").toString().isEmpty ||
                  prefs!.getString("halfDrop23").toString() == 'null'
              ? _qualityCheckModel!.halfDrop23
              : prefs!.getString("halfDrop23").toString();

      //  --------------------------------------------
      _qualityCheckModel!.twohoursDrop1 =
          prefs!.getString("twohoursDrop1").toString().isEmpty ||
                  prefs!.getString("twohoursDrop1").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop1
              : prefs!.getString("twohoursDrop1").toString();

      _qualityCheckModel!.twohoursDrop2 =
          prefs!.getString("twohoursDrop2").toString().isEmpty ||
                  prefs!.getString("twohoursDrop2").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop2
              : prefs!.getString("twohoursDrop2").toString();

      _qualityCheckModel!.twohoursDrop3 =
          prefs!.getString("twohoursDrop3").toString().isEmpty ||
                  prefs!.getString("twohoursDrop3").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop3
              : prefs!.getString("twohoursDrop3").toString();

      _qualityCheckModel!.twohoursDrop4 =
          prefs!.getString("twohoursDrop4").toString().isEmpty ||
                  prefs!.getString("twohoursDrop4").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop4
              : prefs!.getString("twohoursDrop4").toString();

      _qualityCheckModel!.twohoursDrop5 =
          prefs!.getString("twohoursDrop5").toString().isEmpty ||
                  prefs!.getString("twohoursDrop5").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop5
              : prefs!.getString("twohoursDrop5").toString();

      _qualityCheckModel!.twohoursDrop6 =
          prefs!.getString("twohoursDrop6").toString().isEmpty ||
                  prefs!.getString("twohoursDrop6").toString() == 'null'
              ? _qualityCheckModel!.twohoursDrop6
              : prefs!.getString("twohoursDrop6").toString();
      // ---------------------------------------------------------------------
      _qualityCheckModel!.fourHoursDrop1 =
          prefs!.getString("fourHoursDrop1").toString().isEmpty ||
                  prefs!.getString("fourHoursDrop1").toString() == 'null'
              ? _qualityCheckModel!.fourHoursDrop1
              : prefs!.getString("fourHoursDrop1").toString();

      _qualityCheckModel!.fourHoursDrop2 =
          prefs!.getString("fourHoursDrop2").toString().isEmpty ||
                  prefs!.getString("fourHoursDrop2").toString() == 'null'
              ? _qualityCheckModel!.fourHoursDrop2
              : prefs!.getString("fourHoursDrop2").toString();

      _qualityCheckModel!.fourHoursDrop3 =
          prefs!.getString("fourHoursDrop3").toString().isEmpty ||
                  prefs!.getString("fourHoursDrop3").toString() == 'null'
              ? _qualityCheckModel!.fourHoursDrop3
              : prefs!.getString("fourHoursDrop3").toString();
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
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Checkbox(
                                                                                      activeColor: Colors.green,
                                                                                      value: check1,
                                                                                      onChanged: (bool? value) {
                                                                                        //value returned when checkbox is clicked
                                                                                        setState(() {
                                                                                          check1 = value;
                                                                                          print('changed ${check1}');
                                                                                        });
                                                                                      }),
                                                                                  Text('N/A'),
                                                                                  textView(context, 'CASE')
                                                                                ],
                                                                              ))
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
                                                            'MSTF1',
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
    return DropdownSearch<String>(
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
        switchcase(dropDown);
        if (val!.toLowerCase() != 'machine down') {
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop')) {
            _qualityCheckModel?.setDrop(context, dropDown, val.toString());
            ffourhrs = false;
            setState(() {});
          }
        }
        if (val.toLowerCase() == 'machine down') {
          if (dropDown.toString().toLowerCase().contains('fourhoursdrop')) {
            _qualityCheckModel?.setDrop(context, dropDown, val.toString());
            setState(() {
              ffourhrs = true;
            });
          }
        }

        if (dropDown.toString().toLowerCase().contains('fourhoursdrop'))

        /*if (ffourhrs) {*/
        if (dropDown.toString().toLowerCase().contains('fourhoursdrop1') &&
            _qualityCheckModel!
                .getDrop(dropDown)
                .toString()
                .toLowerCase()
                .contains('machine down')) {
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
            _qualityCheckModel!
                .getDrop(dropDown)
                .toString()
                .toLowerCase()
                .contains('machine down')) {
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
        }
        if (dropDown.toString().toLowerCase().contains('fourhoursdrop3') &&
            _qualityCheckModel!
                .getDrop(dropDown)
                .toString()
                .toLowerCase()
                .contains('machine down')) {
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
            enabled: check1!?
            _qualityCheckModel!.canRequestFocusCASE(textField,check1!)
            :_qualityCheckModel!.canRequestFocus(textField),
            controller: _qualityCheckModel!.selectTextEditor(textField),
            decoration: InputDecoration(
              constraints: BoxConstraints(
                  minHeight: textField == 'timeTF1' ? 205 : 55,
                  maxHeight: textField == 'timeTF1' ? 205 : 55),
              border: InputBorder.none,
            ),
            onTap: () {
              switchcase(textField);
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

                  // if (no > 1) {
                  //   if (_qualityCheckModel!
                  //           .selectTextEditor('timeTF' + (no - 1).toString())!
                  //           .text
                  //           .toString() !=
                  //       '') {
                  //     print(
                  //         'adasssssssss ${_qualityCheckModel!.selectTextEditor('timeTF' + (no - 1).toString())!.text.toString()}');
                  //     _qualityCheckModel!.selectTextEditor(textField)!.text =
                  //         CustomFunctions().getHalfandHour(_qualityCheckModel!
                  //             .selectTextEditor('timeTF' + (no - 1).toString())!
                  //             .text
                  //             .toString());
                  //   }
                  // }
                // } else {
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
              switchcase(textField);
            }));
  }

  Widget textView(BuildContext context, String text) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w800)));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  switchcase(textField) {
    switch (textField) {
      case 'timeTF1':
        func1() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf1", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func1();
        break;
      case 'timeTF2':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf2", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF3':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf3", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF4':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf4", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF5':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf5", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF6':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf6", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF7':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf7", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF8':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf8", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF9':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf9", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF10':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf10", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF11':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf11", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF12':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf12", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF13':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf13", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF14':
        func14() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf14", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func14();
        break;
      case 'timeTF15':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf15", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF16':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf16", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF17':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf17", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF18':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf18", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF19':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf19", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF20':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf20", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF21':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf21", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF22':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf22", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF23':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf23", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'timeTF24':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "tf24", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;

      // ---------------------------------------tf---over-------------------------------------
      case 'MSTF1':
        func1() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "MSTF1", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func1();
        break;
      // ----------------------------------ms-------------------------------------------------------

      case 'case1':
        func1() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case1", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func1();
        break;
      case 'case2':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case2", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case3':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case3", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case4':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case4", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case5':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case5", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case6':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case6", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case7':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case7", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case8':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case8", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case9':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case9", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case10':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case10", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case11':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case11", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case12':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case12", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case13':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case13", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case14':
        func14() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case14", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func14();
        break;
      case 'case15':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case15", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case16':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case16", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case17':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case17", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case18':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case18", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case19':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case19", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case20':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case20", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case21':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case21", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case22':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case22", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case23':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case23", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'case24':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "case24", _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      // ----------------------------------case24----------------------------------
      case 'halfDrop1':
        func1() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop1", _qualityCheckModel!.getDrop(textField));
        }
        func1();
        break;
      case 'halfDrop2':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop2", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop3':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop3", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop4':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop4", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop5':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop5",
              _qualityCheckModel!.selectTextEditor(textField)!.text);
        }
        func2();
        break;
      case 'halfDrop6':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop6", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop7':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop7", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop8':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop8", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop9':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString("halfDrop9", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop10':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop10", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop11':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop11", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop12':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop12", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop13':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop13", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop14':
        func14() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop14", _qualityCheckModel!.getDrop(textField));
        }
        func14();
        break;
      case 'halfDrop15':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop15", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop16':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop16", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop17':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop17", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop18':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop18", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop19':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop19", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop20':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop20", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop21':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop21", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop22':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop22", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop23':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop23", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'halfDrop24':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!
              .setString("halfDrop24", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      // --------------------------------------------------------------
      case 'twohoursDrop1':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop1", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'twohoursDrop2':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop2", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'twohoursDrop3':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop3", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'twohoursDrop4':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop4", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'twohoursDrop5':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop5", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      case 'twohoursDrop6':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "twohoursDrop6", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
      // --------------------------------------

      case 'fourHoursDrop1':
        func2() async {
          prefs = await SharedPreferences.getInstance();
          prefs!.setString(
              "fourHoursDrop1", _qualityCheckModel!.getDrop(textField));
        }
        func2();
        break;
    }
  }
}
