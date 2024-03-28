import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShiftDetailsWidget extends StatefulWidget {
  const ShiftDetailsWidget({Key? key}) : super(key: key);

  @override
  _ShiftDetailsWidgetState createState() =>
      _ShiftDetailsWidgetState();
}

class _ShiftDetailsWidgetState
    extends State<ShiftDetailsWidget> with AutomaticKeepAliveClientMixin<ShiftDetailsWidget>{

  List<String> _selectShift = ['A','B','C','D'];
  String _shift = '';
  String _machineId = '';
  String _addMaterial = '';
  String _addBatchNo = '';
  String _packageSpec = '';
  String _addDesc = '';


  @override
  Widget build(BuildContext context) {
    super.build(context);
    // TODO: implement build
    return
        SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child:Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.all(20),child: Row(
                mainAxisSize:MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Seal/Bulk Inspection',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: Constants.fontSize_18,
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'REF. QC700434',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: Constants.fontSize_18,
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  )
                ],

              ),),


              Padding(padding: EdgeInsets.all(20),child: Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Shift',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      DropdownSearch<String>(
                        items: _selectShift,
                        popupProps: PopupProps.menu(
                          constraints: BoxConstraints(
                            minHeight: 50,
                            maxHeight: 200
                          ),
                        ),
                        dropdownButtonProps: DropdownButtonProps(
                          constraints: BoxConstraints(minHeight: 50),

                          icon:Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 15,
                          )
                        ),
                      )
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
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
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          border: Border.all(color: Colors.black)

                        ),
                        child: Row(
                          children: [
                            Expanded(child:
                              Text(
                                '12-03-2025'
                              ),
                            ),
                            Icon(Icons.date_range_rounded)
                          ],
                        ),
                      )
                      /*Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: */
                      //),

                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Material',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),

                      TextField(
                        style: Theme.of(context).textTheme.subtitle2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController()..text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
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
                      Text(
                        'Add Batch Number',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        style: Theme.of(context).textTheme.subtitle2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController()..text = _addMaterial,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                        ),
                        onChanged: (value) {
                          _addMaterial = value;
                        },
                      )
                    ],
                  ))
                ],
              )),
              Padding(padding: EdgeInsets.all(20),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex:1,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Machine ID',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        style: Theme.of(context).textTheme.subtitle2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController()..text = _machineId,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                        ),
                        onChanged: (value) {
                            _machineId = value;
                        },
                      )
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(flex:2,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Package Specifications',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        style: Theme.of(context).textTheme.subtitle2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController()..text = _packageSpec,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                        ),
                        onChanged: (value) {
                          _packageSpec = value;
                        },
                      )

                    ],
                  )),
                  Container(width: 200,),
                  Visibility(child: Expanded(flex:1,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Machine ID',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Constants.fontSize_14,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        style: Theme.of(context).textTheme.subtitle2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController()..text = _machineId,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                        ),
                        onChanged: (value) {
                          _machineId = value;
                        },
                      )
                    ],
                  )),
                    visible: false,
                  )
                ],
              )),
    Padding(padding: EdgeInsets.all(20),child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Description',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Constants.fontSize_14,
                        fontFamily: Constants.fontFamily,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  child:TextField(
                    style: Theme.of(context).textTheme.subtitle2,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: TextEditingController()..text = _addDesc,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        minHeight: 200,
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      _addDesc = value;
                    },
                  ))
                ],
              ))
            ],
        )
        );
  }

  Widget _customDropDownText(BuildContext context, String? name, String? type) {
    return Container(
      child: Text(
        name.toString(),
        style: TextStyle(
            fontSize: 14,
            color:
            Colors.black),
      ),
    );
  }
  Widget _customDropDownText2(BuildContext context, String? name, bool type) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        child: Text(
          name.toString(),
          style: TextStyle(
              fontSize: 14,
              color: Colors.black),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}