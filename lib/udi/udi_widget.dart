import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UDIWidget extends StatefulWidget {
  const UDIWidget({Key? key}) : super(key: key);

  @override
  _UDIWidgetState createState() =>
      _UDIWidgetState();
}

class _UDIWidgetState
    extends State<UDIWidget> with AutomaticKeepAliveClientMixin<UDIWidget>{
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  String _printerSpeed1 = '';
  String _printerSpeed2 = '';
  String _printerSpeed3 = '';
  String _printerDelay1 = '';
  String _printerDelay2 = '';
  String _printerDelay3 = '';

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child:Padding(padding: EdgeInsets.all(20),child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),child: Row(
                  mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black12
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10,top: 10),
                              child: Text('REF.MD700753',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constants.fontSize_18
                                )),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10,top: 5),
                              child:Text('Line 6 only'),),
                            Divider(),
                            Padding(padding: EdgeInsets.only(left: 10,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                  child:Text('Printer Speed',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),),

                                Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                  child:
                                  TextField(
                                    style: Theme.of(context).textTheme.subtitle2,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    controller: TextEditingController()..text = _printerSpeed1,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                    ),
                                    onChanged: (val) {
                                      _printerSpeed1 = val;
                                    },
                                  ),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('Range',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: Constants.fontSize_12
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Icon(
                                        Icons.arrow_downward,
                                        color: Colors.blueAccent,
                                        size: 13,
                                      )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('80',
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: Constants.fontSize_10,
                                            fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_upward,
                                          color: Colors.redAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('200',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),),
                            Padding(padding: EdgeInsets.only(left: 10,right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                    child:Text('Printer Delay',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),),

                                  Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                    child:
                                    TextField(
                                      style: Theme.of(context).textTheme.subtitle2,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      controller: TextEditingController()..text = _printerDelay1,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                      ),
                                      onChanged: (val) {
                                        _printerDelay1 = val;
                                      },
                                    ),),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('Range',
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: Constants.fontSize_12
                                            )
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                          child:Icon(
                                            Icons.arrow_downward,
                                            color: Colors.blueAccent,
                                            size: 13,
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('15',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: Constants.fontSize_10,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                          child:Icon(
                                            Icons.arrow_upward,
                                            color: Colors.redAccent,
                                            size: 13,
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('25',
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: Constants.fontSize_10,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),),


                          ],
                        ),
                      ),),
                    SizedBox(width: 20,),
                    Expanded(child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black12
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10,top: 10),
                              child: Text('REF.MD700753',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constants.fontSize_18
                                )),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10,top: 5),
                              child:Text('Line 8 only'),),
                            Divider(),
                            Padding(padding: EdgeInsets.only(left: 10,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                  child:Text('Printer Speed',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),),

                                Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                  child:
                                  TextField(
                                    style: Theme.of(context).textTheme.subtitle2,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    controller: TextEditingController()..text = _printerSpeed2,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                    ),
                                    onChanged: (val) {
                                      _printerSpeed2 = val;
                                    },
                                  ),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('Range',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: Constants.fontSize_12
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Icon(
                                        Icons.arrow_downward,
                                        color: Colors.blueAccent,
                                        size: 13,
                                      )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('80',
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: Constants.fontSize_10,
                                            fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_upward,
                                          color: Colors.redAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('200',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),),
                            Padding(padding: EdgeInsets.only(left: 10,right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                    child:Text('Printer Delay',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),),

                                  Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                    child:
                                    TextField(
                                      style: Theme.of(context).textTheme.subtitle2,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      controller: TextEditingController()..text = _printerDelay2,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                      ),
                                      onChanged: (val) {
                                        _printerDelay2 = val;
                                      },
                                    ),),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('Range',
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: Constants.fontSize_12
                                            )
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                          child:Icon(
                                            Icons.arrow_downward,
                                            color: Colors.blueAccent,
                                            size: 13,
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('15',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: Constants.fontSize_10,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                          child:Icon(
                                            Icons.arrow_upward,
                                            color: Colors.redAccent,
                                            size: 13,
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Text('25',
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: Constants.fontSize_10,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),),


                          ],
                        ),
                      ),),
                    SizedBox(width: 20,),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black12
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10,top: 10),
                            child: Text('MD700335/MD700599',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constants.fontSize_18
                                )),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10,top: 5),
                            child:Text('0.3ML only'),),
                          Divider(),
                          Padding(padding: EdgeInsets.only(left: 10,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                  child:Text('Printer Speed',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),),

                                Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                  child:
                                  TextField(
                                    style: Theme.of(context).textTheme.subtitle2,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    controller: TextEditingController()..text = _printerSpeed3,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                    ),
                                    onChanged: (val) {
                                      _printerSpeed3 = val;
                                    },
                                  ),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('Range',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: Constants.fontSize_12
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_downward,
                                          color: Colors.blueAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('80',
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_upward,
                                          color: Colors.redAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('200',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),),
                          Padding(padding: EdgeInsets.only(left: 10,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5,top: 10,bottom: 5),
                                  child:Text('Printer Delay',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),),

                                Padding(padding: EdgeInsets.only(left: 0,top: 5,bottom: 5),
                                  child:
                                  TextField(
                                    style: Theme.of(context).textTheme.subtitle2,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    controller: TextEditingController()..text = _printerDelay3,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                    ),
                                    onChanged: (val) {
                                      _printerDelay3 = val;
                                    },
                                  ),),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('Range',
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: Constants.fontSize_12
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_downward,
                                          color: Colors.blueAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('15',
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                        child:Icon(
                                          Icons.arrow_upward,
                                          color: Colors.redAccent,
                                          size: 13,
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                      child:Text('25',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: Constants.fontSize_10,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),),


                        ],
                      ),
                    ),),
                  ]
              )
              )
            ]
        )
        )
    );
  }

}