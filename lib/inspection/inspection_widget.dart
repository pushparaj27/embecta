import 'package:embecta/widget/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspectionWidget extends StatefulWidget {
  const InspectionWidget({super.key});

  @override
  State<InspectionWidget> createState() => _InspectionWidgetState();
}

class _InspectionWidgetState extends State<InspectionWidget> {
  @override
  Widget build(BuildContext context) {
    final _titleTextStyle = GoogleFonts.roboto(
        fontWeight: FontWeight.w700, fontSize: 18.0, color: Colors.black);
    final _subTitleTextStyle = GoogleFonts.roboto(
        fontWeight: FontWeight.w600, fontSize: 16.0, color: Colors.black);
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(
        16.0,
      ),
      child: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonSizedBox(),
          Text(
            "0.3ML & 0.5ML FFS CARTON/CASE PACK INSPECTION (CONTINUED)",
            style: GoogleFonts.roboto(
              backgroundColor: Colors.grey.shade700,
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          const CommonSizedBox(),
          Text(
            "INSPECTION CHARACTERISTICS -",
            style: _titleTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            " Shelf Cartons/Corrugated Cases - AT START OF SHIFT & EVERY HOUR",
            style: _subTitleTextStyle,
          ),
          BulletListItem(
              "Collect 2 consecutive shelf cartons / corrugated cases per machine (Ref. TP700321); "),
          BulletListItem(
              "LINE 6 – Non-corrugated Cartons collect 1 cycle of 4 cartons after casepack. "),
          BulletListItem(
              "Lot Code Inspection – See shaded box below for details"),
          BulletListItem(
              "Print Quality - Print is legible, not smudged, missing, or damaged in any way."),
          BulletListItem("Bag count shall match packaging spec."),
          BulletListItem("Insert shall be present (if applicable)."),
          BulletListItem("Cartons/ corrugated cases shall not be damaged"),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Bar Coding – See shaded box below for human readable details",
              style: _subTitleTextStyle,
            ),
          ),
          BulletListItem(
              "APAN ONLY- confirm bar code scans at least a “B” grade when tested per "
              "TP700270 and assure the bar code information is correct. Confirm the human "
              "readable under the barcode is correct per the work order"),
          BulletListItem(
              "2D BAR CODE - target is at least a grade “B” however a grade “C” is "
              "acceptable. Confirm information in the bar code matches the human readable "
              "lot code information. TP700708"),
//TODO implement bold text here we need to do
          Text(
            " Cases/Labels - AT START OF SHIFT & EVERY HOUR",
            style: _subTitleTextStyle,
          ),
          Text("(Collect 1 case after the checkweigher) Ref. TP700322:"),
          BulletListItem(
              "Lot Code Inspection – See shaded box below for details"),
          BulletListItem(
              "Case Quality - Print on case is legible, not smudged or missing; case is not damaged."),
          BulletListItem("Case Quantity is correct."),
          BulletListItem(
              "Sequential number on case is present and legible (Ref. TP700347"),
          BulletListItem(
              "Label is in correct location with no wraparound the end or bottom of case, free from damage and completely readable")
        ],
      ),)
    ));
  }
}

class BulletListItem extends StatelessWidget {
  BulletListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("• "),
          Expanded(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
