import 'package:embecta/comments/comments_widget.dart';
import 'package:embecta/machine_adjustment/machine_adjustment_widget.dart';
import 'package:embecta/material_indicator.dart';
import 'package:embecta/quality_check/quality_check_widget.dart';
import 'package:embecta/shift_details/shift_details_widget.dart';
import 'package:embecta/udi/udi_widget.dart';
import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() =>
      _HomePageState();
}

class _HomePageState
    extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController? _controller;
  int selectedTab = 3;

  @override
  void initState() {
    _controller =
        TabController(length: 5, vsync: this, initialIndex: 0);
    _controller?.index = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          bottom: TabBar(
            controller: _controller,
            isScrollable: false,
            labelColor:
            MediaQuery.of(context).platformBrightness ==
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
                    color: selectedTab == 0?Colors.blue:Colors.black,
                    fontSize: Constants.tabsize,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Machine Adjustment',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    color: selectedTab == 1?Colors.blue:Colors.black,
                    fontSize: Constants.tabsize,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'UDI',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    color: selectedTab == 2?Colors.blue:Colors.black,
                    fontSize: Constants.tabsize,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Quality Check',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    color: selectedTab == 3?Colors.blue:Colors.black,
                    fontSize: Constants.tabsize,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Comments',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    color: selectedTab == 4?Colors.blue:Colors.black,
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
        ),
        body:

          /*if(selectedTab == 0)
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),*/
          TabBarView(
            controller: _controller,
              children: [
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: MachineAdjustmentWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: UDIWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: QualityCheckWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: CommentsWidget()),
            /*Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget()),
            Container(height: MediaQuery.of(context).size.height-50,child: ShiftDetailsWidget())*//*,*/
          ])
    );

  }

}