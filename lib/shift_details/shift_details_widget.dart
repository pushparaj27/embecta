import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../models/home_page_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShiftDetailsWidget extends StatefulWidget {
  HomePageModel appData;
  ShiftDetailsWidget({
    Key? key,
    required this.appData,
  }) : super(key: key);

  @override
  _ShiftDetailsWidgetState createState() => _ShiftDetailsWidgetState();
}

class _ShiftDetailsWidgetState extends State<ShiftDetailsWidget>
    with AutomaticKeepAliveClientMixin<ShiftDetailsWidget> {
  final _popupCustomValidationKey = GlobalKey<DropdownSearchState<String>>();

  final List<String> _selectShift = ['A', 'B', 'C', 'D', '1', '2', '3'];
  final List<String> _selectMachineId = ['NG', 'NJ', 'NK', 'NT', 'NW', 'NZ'];
  final String _shift = '';
  String _machineId = '';
  String _addMaterial = '';
  final String _addBatchNo = '';
  String _packageSpec = '';
  String _addDesc = '';
  String itemSelected = '';
  List store = [];
  SharedPreferences? prefs;
  bool serachfield = false;
  TextEditingController _datePickerTFController = TextEditingController();
  TextEditingController _materialController = TextEditingController();
  TextEditingController _batchNumberController = TextEditingController();
  TextEditingController _packageSpecController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      prefs = await SharedPreferences.getInstance();
      setState(() {});
      _materialController.text =
          prefs!.getString("material").toString().isEmpty ||
                  prefs!.getString("material").toString() == 'null'
              ?_materialController.text
              : prefs!.getString("material").toString();
      _batchNumberController.text =
          prefs!.getString("batchNumberController").toString().isEmpty||
                  prefs!.getString("batchNumberController").toString() == 'null'
              ? _batchNumberController.text
              : prefs!.getString("batchNumberController").toString();
      _packageSpecController.text =
          prefs!.getString("packageSpecController").toString().isEmpty||
                  prefs!.getString("packageSpecController").toString() == 'null'
              ? _packageSpecController.text
              : prefs!.getString("packageSpecController").toString();
      widget.appData.HSShift =
          prefs!.getString("selectshift").toString().isEmpty||
                  prefs!.getString("selectshift").toString() == 'null'
              ? widget.appData.HSShift
              : prefs!.getString("selectshift").toString();
      _datePickerTFController.text = prefs!.getString("datePickerTF").toString().isEmpty||
          prefs!.getString("datePickerTF").toString()=='null'
              ? _datePickerTFController.text
              : prefs!.getString("datePickerTF").toString();
      itemSelected = prefs!.getString("selectMachineId").toString().isEmpty|| 
      prefs!.getString("selectMachineId").toString()=='null'
          ? itemSelected
          : prefs!.getString("selectMachineId").toString();
      _addDesc = prefs!.getString("description").toString().isEmpty||
      prefs!.getString("description").toString()=='null'
          ? _addDesc
          : prefs!.getString("description").toString();
    });
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      final String formatted = formatter.format(picked);
      widget.appData.HSDate = formatted.toString();
      _datePickerTFController = TextEditingController.fromValue(
        TextEditingValue(
          text: formatted.toString(),
          selection: TextSelection.collapsed(
            offset: formatted.toString().length,
          ),
        ),
      );
      func() async {
        prefs = await SharedPreferences.getInstance();
        prefs!.setString("datePickerTF", widget.appData.HSDate.toString());
      }
      func();
    }
  }

  @override
  Widget build(BuildContext context) {
    final _border = const OutlineInputBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(
        10.0,
      ),
    ));
    final _errorBorder = const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ));
    super.build(context);
    // TODO: implement build
    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Seal/Bulk Inspection',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: Constants.fontSize_18,
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    child: Text(
                      'REF. QC700434',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: Constants.fontSize_18,
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Shift',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: Constants.fontSize_14,
                              fontFamily: Constants.fontFamily,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DropdownSearch<String>(
                          onChanged: (value) {
                            widget.appData.HSShift = value ?? "";
                            func() async {
                              prefs = await SharedPreferences.getInstance();
                              prefs!.setString("selectshift", value.toString());
                            }

                            func();
                          },
                          items: _selectShift,
                          popupProps: const PopupProps.menu(
                            constraints:
                                BoxConstraints(minHeight: 50, maxHeight: 200),
                          ),
                          dropdownButtonProps: const DropdownButtonProps(
                              constraints: BoxConstraints(minHeight: 50),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                                size: 15,
                              )),
                          selectedItem: widget.appData.HSShift,
                        )
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Date',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: Constants.fontSize_14,
                              fontFamily: Constants.fontFamily,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(10),
                        //       ),
                        //     border: Border.all(color: Colors.black)

                        //   ),
                        //   child: Row(
                        //     children: [
                        //       Expanded(child:
                        //         Text(
                        //           '12-03-2025'
                        //         ),
                        //       ),
                        //       Icon(Icons.date_range_rounded)
                        //     ],
                        //   ),
                        // )
                        Container(
                          height: 50,
                          child: TextField(
                            controller: _datePickerTFController,
                            onChanged: (value) {
                              func() async {
                                prefs = await SharedPreferences.getInstance();
                                prefs!.setString(
                                    "datePickerTF", value.toString());
                              }

                              func();
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  _selectDate(context);
                                },
                                child: const Icon(
                                  Icons.calendar_month,
                                ),
                              ),
                            ),
                          ),
                        ),
                        /*Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: */
                        //),
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Material',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: Constants.fontSize_14,
                              fontFamily: Constants.fontFamily,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: Theme.of(context).textTheme.subtitle2,
                          textInputAction: TextInputAction.next,
                          controller: _materialController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          maxLength: 10,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[a-zA-Z0-9]+$')),
                          ],
                          decoration: InputDecoration(
                              border: _border,
                              errorBorder: _errorBorder,
                              counterText: "",
                              errorMaxLines: 3),
                          onChanged: (value) {
                            widget.appData.HSMaterial = value;
                            func() async {
                              final currentLength = value!.length;
                              if ((currentLength >= 7 && currentLength <= 10)) {
                                prefs = await SharedPreferences.getInstance();
                                prefs!.setString("material", value.toString());
                              }
                              else{
                                prefs = await SharedPreferences.getInstance();
                                prefs!.setString("material", '');
                              }
                            }

                            func();
                          },
                          validator: (value) {
                            final currentLength = value!.length;
                            if (!(currentLength >= 7 && currentLength <= 10)) {
                              return "The input must be between 7 and 10 characters long.";
                            }
                            return null;
                          },
                        )
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Batch Number',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: Constants.fontSize_14,
                              fontFamily: Constants.fontFamily,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: Theme.of(context).textTheme.subtitle2,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          textInputAction: TextInputAction.next,
                          controller: _batchNumberController,
                          maxLength: 10,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[0-9]+$')),
                          ],
                          decoration: InputDecoration(
                              border: _border,
                              errorBorder: _errorBorder,
                              counterText: "",
                              errorMaxLines: 3),
                          onChanged: (value) {
                            _addMaterial = value;
                            widget.appData.HSBatchNumber = value;
                            func() async {
                              final currentLength = value!.length;
                              if ((currentLength >= 7)) {
                                prefs = await SharedPreferences.getInstance();
                                prefs!.setString(
                                    "batchNumberController", value.toString());
                              }
                              else{
                                prefs = await SharedPreferences.getInstance();
                                prefs!.setString("batchNumberController", '');
                              }
                            }

                            func();
                          },
                          validator: (value) {
                            final currentLength = value!.length;
                            if (!(currentLength >= 7)) {
                              return "The input must be at least 7 characters long.";
                            }
                            return null;
                          },
                        )
                      ],
                    ))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Machine ID',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DropdownSearch<String>(
                              items: _selectMachineId,
                              popupProps: const PopupProps.menu(
                                showSearchBox: true,
                                constraints: BoxConstraints(
                                    minHeight: 50, maxHeight: 200),
                              ),
                              dropdownButtonProps: const DropdownButtonProps(
                                  constraints: BoxConstraints(minHeight: 50),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                    size: 15,
                                  )),
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                textAlignVertical: TextAlignVertical.center,
                                dropdownSearchDecoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  itemSelected = value.toString();
                                });
                                func() async {
                                  prefs = await SharedPreferences.getInstance();
                                  prefs!.setString("selectMachineId",
                                      itemSelected.toString());
                                }

                                func();
                              },
                              selectedItem: itemSelected,
                            ),

                            //                      DropdownSearch<String>(
                            //                       items: _selectMachineId,
                            //                       popupProps: const PopupProps.menu(
                            //                         showSearchBox: true,
                            //                         constraints: BoxConstraints(
                            //                             minHeight: 50, maxHeight: 200),
                            //                       ),
                            //                               onChanged: (value) {
                            //   setState(() {
                            //     itemSelected = value.toString();
                            //   });
                            // },
                            // selectedItem: itemSelected,
                            //                       filterFn: (item, filter) {
                            //                         item = _selectMachineId
                            //                             .where((element) => element
                            //                                 .toString()
                            //                                 .toLowerCase()
                            //                                 .contains(
                            //                                     filter.toString().toLowerCase()))
                            //                             .toString();

                            //                         item = filter;
                            //                         return true;
                            //                       },
                            //                       // onChanged: (value) {
                            //                       //   store = [];
                            //                       //   store = _selectMachineId
                            //                       //       .where((element) => element
                            //                       //           .toString()
                            //                       //           .toLowerCase()
                            //                       //           .contains(
                            //                       //               value.toString().toLowerCase()))
                            //                       //       .toList();
                            //                       //   setState(() {});
                            //                       //    print('filter ${store}');

                            //                       // },
                            //                       dropdownButtonProps: const DropdownButtonProps(
                            //                           constraints: BoxConstraints(minHeight: 50),
                            //                           icon: Icon(
                            //                             Icons.arrow_drop_down,
                            //                             color: Colors.black,
                            //                             size: 15,
                            //                           )),
                            //                     )
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package Specifications',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: Constants.fontSize_14,
                                  fontFamily: Constants.fontFamily,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: Theme.of(context).textTheme.subtitle2,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: _packageSpecController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 10,
                              decoration: InputDecoration(
                                  border: _border,
                                  errorBorder: _errorBorder,
                                  counterText: "",
                                  errorMaxLines: 3),
                              onChanged: (value) {
                                _packageSpec = value;
                                widget.appData.HSPackageSpec = value;
                                func() async {
                                  final currentLength = value.length;
                                  if ((currentLength >= 7)) {
                                    prefs = await SharedPreferences.getInstance();
                                    prefs!.setString("packageSpecController",
                                        value.toString());
                                  }
                                  else{
                                    prefs = await SharedPreferences.getInstance();
                                    prefs!.setString("packageSpecController", '');
                                  }
                                }

                                func();
                              },
                              validator: (value) {
                                final currentLength = value!.length;
                                if (!(currentLength >= 7)) {
                                  return "The input must be between 6 and 7 characters long.";
                                }
                                return null;
                              },
                            )
                          ],
                        )),
                    Container(
                      width: 200,
                    ),
                    Visibility(
                      child: Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Machine ID',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: Constants.fontSize_14,
                                    fontFamily: Constants.fontFamily,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                style: Theme.of(context).textTheme.subtitle2,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                controller: TextEditingController()
                                  ..text = _machineId,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                                ),
                                onChanged: (value) {
                                  _machineId = value;
                                  widget.appData.HSMachineId = value;
                                },
                              )
                            ],
                          )),
                      visible: false,
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Material Description',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: Constants.fontSize_14,
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          style: Theme.of(context).textTheme.subtitle2,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: TextEditingController()..text = _addDesc,
                          decoration: const InputDecoration(
                            constraints: BoxConstraints(
                              minHeight: 200,
                            ),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            _addDesc = value;
                            widget.appData.HSDescription = value;
                            func() async {
                              prefs = await SharedPreferences.getInstance();
                              prefs!.setString("description",
                                  widget.appData.HSDescription.toString());
                            }

                            func();
                          },
                        ))
                  ],
                ))
          ],
        ));
  }

  Widget _customDropDownText(BuildContext context, String? name, String? type) {
    return Container(
      child: Text(
        name.toString(),
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }

  Widget _customDropDownText2(BuildContext context, String? name, bool type) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: Text(
          name.toString(),
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class Searchfield extends StatefulWidget {
  final List slist;
  const Searchfield({super.key, required this.slist});

  @override
  State<Searchfield> createState() => _SearchfieldState();
}

class _SearchfieldState extends State<Searchfield> {
  TextEditingController searchfiled = new TextEditingController();
  List store = [];
  @override
  void initState() {
    super.initState();
    debugPrint('working');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Container(
              height: 25,
              width: double.infinity,
              child: TextField(
                controller: searchfiled,
                onChanged: (value) {
                  store = [];
                  store = widget.slist
                      .where((element) => element
                          .toString()
                          .toLowerCase()
                          .contains(value.toString().toLowerCase()))
                      .toList();
                  setState(() {});
                },
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Scrollbar(
            child: Container(
              height: (MediaQuery.of(context).size.height / 2.8) - 34,
              width: MediaQuery.of(context).size.width / 3,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: searchfiled.text.isEmpty
                    ? widget.slist.length
                    : store.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Text(searchfiled.text.isEmpty
                        ? '${widget.slist[index]}'
                        : '${store[index]}'),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
