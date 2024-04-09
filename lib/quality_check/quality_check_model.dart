import 'package:dropdown_search/dropdown_search.dart';
import 'package:embecta/utils/custom_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QualityCheckModel {
  TextEditingController? timeTF1;
  TextEditingController? timeTF2;
  TextEditingController? timeTF3;
  TextEditingController? timeTF4;
  TextEditingController? timeTF5;
  TextEditingController? timeTF6;
  TextEditingController? timeTF7;
  TextEditingController? timeTF8;
  TextEditingController? timeTF9;
  TextEditingController? timeTF10;
  TextEditingController? timeTF11;
  TextEditingController? timeTF12;
  TextEditingController? timeTF13;
  TextEditingController? timeTF14;
  TextEditingController? timeTF15;
  TextEditingController? timeTF16;
  TextEditingController? timeTF17;
  TextEditingController? timeTF18;
  TextEditingController? timeTF19;
  TextEditingController? timeTF20;
  TextEditingController? timeTF21;
  TextEditingController? timeTF22;
  TextEditingController? timeTF23;
  TextEditingController? timeTF24;

  TextEditingController? MSTF1;
  TextEditingController? MSTF2;
  TextEditingController? MSTF3;
  TextEditingController? MSTF4;
  TextEditingController? MSTF5;
  TextEditingController? MSTF6;
  TextEditingController? MSTF7;
  TextEditingController? MSTF8;
  TextEditingController? MSTF9;
  TextEditingController? MSTF10;
  TextEditingController? MSTF11;
  TextEditingController? MSTF12;
  TextEditingController? MSTF13;
  TextEditingController? MSTF14;
  TextEditingController? MSTF15;
  TextEditingController? MSTF16;
  TextEditingController? MSTF17;
  TextEditingController? MSTF18;
  TextEditingController? MSTF19;
  TextEditingController? MSTF20;
  TextEditingController? MSTF21;
  TextEditingController? MSTF22;
  TextEditingController? MSTF23;
  TextEditingController? MSTF24;

  TextEditingController? acc1;
  TextEditingController? acc2;
  TextEditingController? acc3;
  TextEditingController? acc4;
  TextEditingController? acc5;
  TextEditingController? acc6;
  TextEditingController? acc7;
  TextEditingController? acc8;
  TextEditingController? acc9;
  TextEditingController? acc10;
  TextEditingController? acc11;
  TextEditingController? acc12;
  TextEditingController? acc13;
  TextEditingController? acc14;
  TextEditingController? acc15;
  TextEditingController? acc16;
  TextEditingController? acc17;
  TextEditingController? acc18;
  TextEditingController? acc19;
  TextEditingController? acc20;
  TextEditingController? acc21;
  TextEditingController? acc22;
  TextEditingController? acc23;
  TextEditingController? acc24;

  TextEditingController? case1;
  TextEditingController? case2;
  TextEditingController? case3;
  TextEditingController? case4;
  TextEditingController? case5;
  TextEditingController? case6;
  TextEditingController? case7;
  TextEditingController? case8;
  TextEditingController? case9;
  TextEditingController? case10;
  TextEditingController? case11;
  TextEditingController? case12;
  TextEditingController? case13;
  TextEditingController? case14;
  TextEditingController? case15;
  TextEditingController? case16;
  TextEditingController? case17;
  TextEditingController? case18;
  TextEditingController? case19;
  TextEditingController? case20;
  TextEditingController? case21;
  TextEditingController? case22;
  TextEditingController? case23;
  TextEditingController? case24;

  String halfDrop1 = '';
  String halfDrop2 = '';
  String halfDrop3 = '';
  String halfDrop4 = '';
  String halfDrop5 = '';
  String halfDrop6 = '';
  String halfDrop7 = '';
  String halfDrop8 = '';
  String halfDrop9 = '';
  String halfDrop10 = '';
  String halfDrop11 = '';
  String halfDrop12 = '';
  String halfDrop13 = '';
  String halfDrop14 = '';
  String halfDrop15 = '';
  String halfDrop16 = '';
  String halfDrop17 = '';
  String halfDrop18 = '';
  String halfDrop19 = '';
  String halfDrop20 = '';
  String halfDrop21 = '';
  String halfDrop22 = '';
  String halfDrop23 = '';
  String halfDrop24 = '';

  String twohoursDrop1 = '';
  String twohoursDrop2 = '';
  String twohoursDrop3 = '';
  String twohoursDrop4 = '';
  String twohoursDrop5 = '';
  String twohoursDrop6 = '';

  String fourHoursDrop1 = '';
  String fourHoursDrop2 = '';
  String fourHoursDrop3 = '';

  void initTextController() {
    timeTF1 = TextEditingController();
    timeTF2 = TextEditingController();
    timeTF3 = TextEditingController();
    timeTF4 = TextEditingController();
    timeTF5 = TextEditingController();
    timeTF6 = TextEditingController();
    timeTF7 = TextEditingController();
    timeTF8 = TextEditingController();
    timeTF9 = TextEditingController();
    timeTF10 = TextEditingController();
    timeTF11 = TextEditingController();
    timeTF12 = TextEditingController();
    timeTF13 = TextEditingController();
    timeTF14 = TextEditingController();
    timeTF15 = TextEditingController();
    timeTF16 = TextEditingController();
    timeTF17 = TextEditingController();
    timeTF18 = TextEditingController();
    timeTF19 = TextEditingController();
    timeTF20 = TextEditingController();
    timeTF21 = TextEditingController();
    timeTF22 = TextEditingController();
    timeTF23 = TextEditingController();
    timeTF24 = TextEditingController();

    MSTF1 = TextEditingController();
    MSTF2 = TextEditingController();
    MSTF3 = TextEditingController();
    MSTF4 = TextEditingController();
    MSTF5 = TextEditingController();
    MSTF6 = TextEditingController();
    MSTF7 = TextEditingController();
    MSTF8 = TextEditingController();
    MSTF9 = TextEditingController();
    MSTF10 = TextEditingController();
    MSTF11 = TextEditingController();
    MSTF12 = TextEditingController();
    MSTF13 = TextEditingController();
    MSTF14 = TextEditingController();
    MSTF15 = TextEditingController();
    MSTF16 = TextEditingController();
    MSTF17 = TextEditingController();
    MSTF18 = TextEditingController();
    MSTF19 = TextEditingController();
    MSTF20 = TextEditingController();
    MSTF21 = TextEditingController();
    MSTF22 = TextEditingController();
    MSTF23 = TextEditingController();
    MSTF24 = TextEditingController();

    acc1 = TextEditingController();
    acc2 = TextEditingController();
    acc3 = TextEditingController();
    acc4 = TextEditingController();
    acc5 = TextEditingController();
    acc6 = TextEditingController();
    acc7 = TextEditingController();
    acc8 = TextEditingController();
    acc9 = TextEditingController();
    acc10 = TextEditingController();
    acc11 = TextEditingController();
    acc12 = TextEditingController();
    acc13 = TextEditingController();
    acc14 = TextEditingController();
    acc15 = TextEditingController();
    acc16 = TextEditingController();
    acc17 = TextEditingController();
    acc18 = TextEditingController();
    acc19 = TextEditingController();
    acc20 = TextEditingController();
    acc21 = TextEditingController();
    acc22 = TextEditingController();
    acc23 = TextEditingController();
    acc24 = TextEditingController();

    case1 = TextEditingController();
    case2 = TextEditingController();
    case3 = TextEditingController();
    case4 = TextEditingController();
    case5 = TextEditingController();
    case6 = TextEditingController();
    case7 = TextEditingController();
    case8 = TextEditingController();
    case9 = TextEditingController();
    case10 = TextEditingController();
    case11 = TextEditingController();
    case12 = TextEditingController();
    case13 = TextEditingController();
    case14 = TextEditingController();
    case15 = TextEditingController();
    case16 = TextEditingController();
    case17 = TextEditingController();
    case18 = TextEditingController();
    case19 = TextEditingController();
    case20 = TextEditingController();
    case21 = TextEditingController();
    case22 = TextEditingController();
    case23 = TextEditingController();
    case24 = TextEditingController();
  }

  TextEditingController? selectTextEditor(String text) {
    if (text == 'timeTF1') return timeTF1;
    if (text == 'timeTF2') return timeTF2;
    if (text == 'timeTF3') return timeTF3;
    if (text == 'timeTF4') return timeTF4;
    if (text == 'timeTF5') return timeTF5;
    if (text == 'timeTF6') return timeTF6;
    if (text == 'timeTF7') return timeTF7;
    if (text == 'timeTF8') return timeTF8;
    if (text == 'timeTF9') return timeTF9;
    if (text == 'timeTF10') return timeTF10;
    if (text == 'timeTF11') return timeTF11;
    if (text == 'timeTF12') return timeTF12;
    if (text == 'timeTF13') return timeTF13;
    if (text == 'timeTF14') return timeTF14;
    if (text == 'timeTF15') return timeTF15;
    if (text == 'timeTF16') return timeTF16;
    if (text == 'timeTF17') return timeTF17;
    if (text == 'timeTF18') return timeTF18;
    if (text == 'timeTF19') return timeTF19;
    if (text == 'timeTF20') return timeTF20;
    if (text == 'timeTF21') return timeTF21;
    if (text == 'timeTF22') return timeTF22;
    if (text == 'timeTF23') return timeTF23;
    if (text == 'timeTF24') return timeTF24;

    if (text == 'MSTF1') return MSTF1;
    if (text == 'MSTF2') return MSTF2;
    if (text == 'MSTF3') return MSTF3;
    if (text == 'MSTF4') return MSTF4;
    if (text == 'MSTF5') return MSTF5;
    if (text == 'MSTF6') return MSTF6;
    if (text == 'MSTF7') return MSTF7;
    if (text == 'MSTF8') return MSTF8;
    if (text == 'MSTF9') return MSTF9;
    if (text == 'MSTF10') return MSTF10;
    if (text == 'MSTF11') return MSTF11;
    if (text == 'MSTF12') return MSTF12;
    if (text == 'MSTF13') return MSTF13;
    if (text == 'MSTF14') return MSTF14;
    if (text == 'MSTF15') return MSTF15;
    if (text == 'MSTF16') return MSTF16;
    if (text == 'MSTF17') return MSTF17;
    if (text == 'MSTF18') return MSTF18;
    if (text == 'MSTF19') return MSTF19;
    if (text == 'MSTF20') return MSTF20;
    if (text == 'MSTF21') return MSTF21;
    if (text == 'MSTF22') return MSTF22;
    if (text == 'MSTF23') return MSTF23;
    if (text == 'MSTF24') return MSTF24;

    if (text == 'acc1') return acc1;
    if (text == 'acc2') return acc2;
    if (text == 'acc3') return acc3;
    if (text == 'acc4') return acc4;
    if (text == 'acc5') return acc5;
    if (text == 'acc6') return acc6;
    if (text == 'acc7') return acc7;
    if (text == 'acc8') return acc8;
    if (text == 'acc9') return acc9;
    if (text == 'acc2') return acc2;
    if (text == 'acc10') return acc10;
    if (text == 'acc11') return acc11;
    if (text == 'acc12') return acc12;
    if (text == 'acc13') return acc13;
    if (text == 'acc14') return acc14;
    if (text == 'acc15') return acc15;
    if (text == 'acc16') return acc16;
    if (text == 'acc17') return acc17;
    if (text == 'acc18') return acc18;
    if (text == 'acc19') return acc19;
    if (text == 'acc20') return acc20;
    if (text == 'acc21') return acc21;
    if (text == 'acc22') return acc22;
    if (text == 'acc23') return acc23;
    if (text == 'acc24') return acc24;

    if (text == 'case1') return case1;
    if (text == 'case2') return case2;
    if (text == 'case3') return case3;
    if (text == 'case4') return case4;
    if (text == 'case5') return case5;
    if (text == 'case6') return case6;
    if (text == 'case7') return case7;
    if (text == 'case8') return case8;
    if (text == 'case9') return case9;
    if (text == 'case10') return case10;
    if (text == 'case11') return case11;
    if (text == 'case12') return case12;
    if (text == 'case13') return case13;
    if (text == 'case14') return case14;
    if (text == 'case15') return case15;
    if (text == 'case16') return case16;
    if (text == 'case17') return case17;
    if (text == 'case18') return case18;
    if (text == 'case19') return case19;
    if (text == 'case20') return case20;
    if (text == 'case21') return case21;
    if (text == 'case22') return case22;
    if (text == 'case23') return case23;
    if (text == 'case24') return case24;
    return TextEditingController();
  }

  bool isEnabled(String valDrop) {
    if (getDrop('fourHoursDrop1')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('halfDrop') || valDrop.contains('twohoursDrop')) {
        if (valDrop == ('halfDrop1') ||
            valDrop == ('halfDrop2') ||
            valDrop.contains('halfDrop3') ||
            valDrop.contains('halfDrop4') ||
            valDrop.contains('halfDrop5') ||
            valDrop.contains('halfDrop6') ||
            valDrop.contains('halfDrop7') ||
            valDrop.contains('halfDrop8') ||
            valDrop.contains('twohoursDrop1') ||
            valDrop.contains('twohoursDrop2')) {
          return false;
        }
      }
    }
    if (getDrop('fourHoursDrop2')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('halfDrop') || valDrop.contains('twohoursDrop')) {
        if (valDrop.contains('halfDrop9') ||
            valDrop.contains('halfDrop10') ||
            valDrop.contains('halfDrop11') ||
            valDrop.contains('halfDrop12') ||
            valDrop.contains('halfDrop13') ||
            valDrop.contains('halfDrop14') ||
            valDrop.contains('halfDrop15') ||
            valDrop.contains('halfDrop16') ||
            valDrop.contains('twohoursDrop3') ||
            valDrop.contains('twohoursDrop4')) {
          return false;
        }
      }
    }
    if (getDrop('fourHoursDrop3')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('halfDrop') || valDrop.contains('twohoursDrop')) {
        if (valDrop.contains('halfDrop17') ||
            valDrop.contains('halfDrop18') ||
            valDrop.contains('halfDrop19') ||
            valDrop.contains('halfDrop20') ||
            valDrop.contains('halfDrop21') ||
            valDrop.contains('halfDrop22') ||
            valDrop.contains('halfDrop23') ||
            valDrop.contains('halfDrop24') ||
            valDrop.contains('twohoursDrop5') ||
            valDrop.contains('twohoursDrop6')) {
          return false;
        }
      }
    }
    return true;
  }

  bool canRequestFocus(String valDrop) {
    if (getDrop('fourHoursDrop1')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('timeTF') || valDrop.contains('case')) {
        for (int i = 1; i < 9; i++) {
          if (valDrop == ('timeTF${i}') || valDrop == ('case$i')) {
            print('adasdasdasd');
            return false;
          }
        }
      }
    }

    if (getDrop('fourHoursDrop2')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('timeTF') || valDrop.contains('case')) {
        int val = int.parse(CustomFunctions().getNumeric(valDrop));
        for (int i = 9; i < 17; i++) {
          if (valDrop == ('timeTF${i}') || valDrop == ('case$i')) {
            return false;
          }
        }
      }
    }
    if (getDrop('fourHoursDrop3')
        .toString()
        .toLowerCase()
        .contains('machine down')) {
      if (valDrop.contains('timeTF') || valDrop.contains('case')) {
        int val = int.parse(CustomFunctions().getNumeric(valDrop));
        for (int i = 17; i < 25; i++) {
          if (valDrop == ('timeTF${i}') || valDrop == ('case$i')) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool canRequestFocusCASE(String valDrop,bool check1) {
    // if (getDrop('fourHoursDrop1')
    //     .toString()
    //     .toLowerCase()
    //     .contains('machine down')) {
      if ( valDrop.contains('case')&&check1) {
        for (int i = 1; i < 24; i++) {
          if ( valDrop == ('case$i')) {
            return false;
          }
        }
      // }
    }
    return true;
  }

  void setDrop(BuildContext context, String type, String value) {
    if (type == 'halfDrop1') {
      halfDrop1 = value;
    }
    if (type == 'halfDrop2') {
      halfDrop2 = value;
    }
    if (type == 'halfDrop3') {
      halfDrop3 = value;
    }
    if (type == 'halfDrop4') {
      halfDrop4 = value;
    }
    if (type == 'halfDrop5') {
      halfDrop5 = value;
    }
    if (type == 'halfDrop6') {
      halfDrop6 = value;
    }
    if (type == 'halfDrop7') {
      halfDrop7 = value;
    }
    if (type == 'halfDrop8') {
      halfDrop8 = value;
    }
    if (type == 'halfDrop9') {
      halfDrop9 = value;
    }
    if (type == 'halfDrop10') {
      halfDrop10 = value;
    }
    if (type == 'halfDrop11') {
      halfDrop11 = value;
    }
    if (type == 'halfDrop12') {
      halfDrop12 = value;
    }
    if (type == 'halfDrop13') {
      halfDrop13 = value;
    }
    if (type == 'halfDrop14') {
      halfDrop14 = value;
    }
    if (type == 'halfDrop15') {
      halfDrop15 = value;
    }
    if (type == 'halfDrop16') {
      halfDrop16 = value;
    }
    if (type == 'halfDrop17') {
      halfDrop17 = value;
    }
    if (type == 'halfDrop18') {
      halfDrop18 = value;
    }
    if (type == 'halfDrop19') {
      halfDrop19 = value;
    }
    if (type == 'halfDrop20') {
      halfDrop20 = value;
    }
    if (type == 'halfDrop21') {
      halfDrop21 = value;
    }
    if (type == 'halfDrop22') {
      halfDrop22 = value;
    }
    if (type == 'halfDrop23') {
      halfDrop23 = value;
    }
    if (type == 'halfDrop24') {
      halfDrop24 = value;
    }

    if (type == 'twohoursDrop1') {
      twohoursDrop1 = value;
    }
    if (type == 'twohoursDrop2') {
      twohoursDrop2 = value;
    }
    if (type == 'twohoursDrop3') {
      twohoursDrop3 = value;
    }
    if (type == 'twohoursDrop4') {
      twohoursDrop4 = value;
    }
    if (type == 'twohoursDrop5') {
      twohoursDrop5 = value;
    }
    if (type == 'twohoursDrop6') {
      twohoursDrop6 = value;
    }

    if (type == 'fourHoursDrop1') {
      fourHoursDrop1 = value;
    }
    if (type == 'fourHoursDrop2') {
      fourHoursDrop2 = value;
    }
    if (type == 'fourHoursDrop3') {
      fourHoursDrop3 = value;
    }
  }

  String getDrop(String type) {
    if (type == 'halfDrop1') {
      return halfDrop1;
    }
    if (type == 'halfDrop2') {
      return halfDrop2;
    }
    if (type == 'halfDrop3') {
      return halfDrop3;
    }
    if (type == 'halfDrop4') {
      return halfDrop4;
    }
    if (type == 'halfDrop5') {
      return halfDrop5;
    }
    if (type == 'halfDrop6') {
      return halfDrop6;
    }
    if (type == 'halfDrop7') {
      return halfDrop7;
    }
    if (type == 'halfDrop8') {
      return halfDrop8;
    }
    if (type == 'halfDrop9') {
      return halfDrop9;
    }
    if (type == 'halfDrop10') {
      return halfDrop10;
    }
    if (type == 'halfDrop11') {
      return halfDrop11;
    }
    if (type == 'halfDrop12') {
      return halfDrop12;
    }
    if (type == 'halfDrop13') {
      return halfDrop13;
    }
    if (type == 'halfDrop14') {
      return halfDrop14;
    }
    if (type == 'halfDrop15') {
      return halfDrop15;
    }
    if (type == 'halfDrop16') {
      return halfDrop16;
    }
    if (type == 'halfDrop17') {
      return halfDrop17;
    }
    if (type == 'halfDrop18') {
      return halfDrop18;
    }
    if (type == 'halfDrop19') {
      return halfDrop19;
    }
    if (type == 'halfDrop20') {
      return halfDrop20;
    }
    if (type == 'halfDrop21') {
      return halfDrop21;
    }
    if (type == 'halfDrop22') {
      return halfDrop22;
    }
    if (type == 'halfDrop23') {
      return halfDrop23;
    }
    if (type == 'halfDrop24') {
      return halfDrop24;
    }

    if (type == 'twohoursDrop1') {
      return twohoursDrop1;
    }
    if (type == 'twohoursDrop2') {
      return twohoursDrop2;
    }
    if (type == 'twohoursDrop3') {
      return twohoursDrop3;
    }
    if (type == 'twohoursDrop4') {
      return twohoursDrop4;
    }
    if (type == 'twohoursDrop5') {
      return twohoursDrop5;
    }
    if (type == 'twohoursDrop6') {
      return twohoursDrop6;
    }

    if (type == 'fourHoursDrop1') {
      return fourHoursDrop1;
    }
    if (type == 'fourHoursDrop2') {
      return fourHoursDrop2;
    }
    if (type == 'fourHoursDrop3') {
      return fourHoursDrop3;
    }
    return '';
  }
}
