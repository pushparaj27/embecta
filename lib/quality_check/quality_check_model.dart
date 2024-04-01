import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QualityCheckModel {
  TextEditingController timeTF1 = TextEditingController();
  TextEditingController timeTF2 = TextEditingController();
  TextEditingController timeTF3 = TextEditingController();
  TextEditingController timeTF4 = TextEditingController();
  TextEditingController timeTF5 = TextEditingController();
  TextEditingController timeTF6 = TextEditingController();
  TextEditingController timeTF7 = TextEditingController();
  TextEditingController timeTF8 = TextEditingController();
  TextEditingController timeTF9 = TextEditingController();
  TextEditingController timeTF10 = TextEditingController();
  TextEditingController timeTF11 = TextEditingController();
  TextEditingController timeTF12 = TextEditingController();
  TextEditingController timeTF13 = TextEditingController();
  TextEditingController timeTF14 = TextEditingController();
  TextEditingController timeTF15 = TextEditingController();
  TextEditingController timeTF16 = TextEditingController();
  TextEditingController timeTF17 = TextEditingController();
  TextEditingController timeTF18 = TextEditingController();
  TextEditingController timeTF19 = TextEditingController();
  TextEditingController timeTF20 = TextEditingController();
  TextEditingController timeTF21 = TextEditingController();
  TextEditingController timeTF22 = TextEditingController();
  TextEditingController timeTF23 = TextEditingController();
  TextEditingController timeTF24 = TextEditingController();

  TextEditingController MSTF1 = TextEditingController();
  TextEditingController MSTF2 = TextEditingController();
  TextEditingController MSTF3 = TextEditingController();
  TextEditingController MSTF4 = TextEditingController();
  TextEditingController MSTF5 = TextEditingController();
  TextEditingController MSTF6 = TextEditingController();
  TextEditingController MSTF7 = TextEditingController();
  TextEditingController MSTF8 = TextEditingController();
  TextEditingController MSTF9 = TextEditingController();
  TextEditingController MSTF10 = TextEditingController();
  TextEditingController MSTF11 = TextEditingController();
  TextEditingController MSTF12 = TextEditingController();
  TextEditingController MSTF13 = TextEditingController();
  TextEditingController MSTF14 = TextEditingController();
  TextEditingController MSTF15 = TextEditingController();
  TextEditingController MSTF16 = TextEditingController();
  TextEditingController MSTF17 = TextEditingController();
  TextEditingController MSTF18 = TextEditingController();
  TextEditingController MSTF19 = TextEditingController();
  TextEditingController MSTF20 = TextEditingController();
  TextEditingController MSTF21 = TextEditingController();
  TextEditingController MSTF22 = TextEditingController();
  TextEditingController MSTF23 = TextEditingController();
  TextEditingController MSTF24 = TextEditingController();

  TextEditingController acc1 = TextEditingController();
  TextEditingController acc2 = TextEditingController();
  TextEditingController acc3 = TextEditingController();
  TextEditingController acc4 = TextEditingController();
  TextEditingController acc5 = TextEditingController();
  TextEditingController acc6 = TextEditingController();
  TextEditingController acc7 = TextEditingController();
  TextEditingController acc8 = TextEditingController();
  TextEditingController acc9 = TextEditingController();
  TextEditingController acc10 = TextEditingController();
  TextEditingController acc11 = TextEditingController();
  TextEditingController acc12 = TextEditingController();
  TextEditingController acc13 = TextEditingController();
  TextEditingController acc14 = TextEditingController();
  TextEditingController acc15 = TextEditingController();
  TextEditingController acc16 = TextEditingController();
  TextEditingController acc17 = TextEditingController();
  TextEditingController acc18 = TextEditingController();
  TextEditingController acc19 = TextEditingController();
  TextEditingController acc20 = TextEditingController();
  TextEditingController acc21 = TextEditingController();
  TextEditingController acc22 = TextEditingController();
  TextEditingController acc23 = TextEditingController();
  TextEditingController acc24 = TextEditingController();

  TextEditingController case1 = TextEditingController();
  TextEditingController case2 = TextEditingController();
  TextEditingController case3 = TextEditingController();
  TextEditingController case4 = TextEditingController();
  TextEditingController case5 = TextEditingController();
  TextEditingController case6 = TextEditingController();
  TextEditingController case7 = TextEditingController();
  TextEditingController case8 = TextEditingController();
  TextEditingController case9 = TextEditingController();
  TextEditingController case10 = TextEditingController();
  TextEditingController case11 = TextEditingController();
  TextEditingController case12 = TextEditingController();
  TextEditingController case13 = TextEditingController();
  TextEditingController case14 = TextEditingController();
  TextEditingController case15 = TextEditingController();
  TextEditingController case16 = TextEditingController();
  TextEditingController case17 = TextEditingController();
  TextEditingController case18 = TextEditingController();
  TextEditingController case19 = TextEditingController();
  TextEditingController case20 = TextEditingController();
  TextEditingController case21 = TextEditingController();
  TextEditingController case22 = TextEditingController();
  TextEditingController case23 = TextEditingController();
  TextEditingController case24 = TextEditingController();

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

  TextEditingController selectTextEditor(String text){
    if(text == 'timeTF1')
      return timeTF1;
    if(text == 'timeTF2')
      return timeTF2;
    if(text == 'timeTF3')
      return timeTF3;
    if(text == 'timeTF4')
      return timeTF4;
    if(text == 'timeTF5')
      return timeTF5;
    if(text == 'timeTF6')
      return timeTF6;
    if(text == 'timeTF7')
      return timeTF7;
    if(text == 'timeTF8')
      return timeTF8;
    if(text == 'timeTF9')
      return timeTF9;
    if(text == 'timeTF10')
      return timeTF10;
    if(text == 'timeTF11')
      return timeTF11;
    if(text == 'timeTF12')
      return timeTF12;
    if(text == 'timeTF13')
      return timeTF13;
    if(text == 'timeTF14')
      return timeTF14;
    if(text == 'timeTF15')
      return timeTF15;
    if(text == 'timeTF16')
      return timeTF16;
    if(text == 'timeTF17')
      return timeTF17;
    if(text == 'timeTF18')
      return timeTF18;
    if(text == 'timeTF19')
      return timeTF19;
    if(text == 'timeTF20')
      return timeTF20;
    if(text == 'timeTF21')
      return timeTF21;
    if(text == 'timeTF22')
      return timeTF22;
    if(text == 'timeTF23')
      return timeTF23;
    if(text == 'timeTF24')
      return timeTF24;

    if(text == 'MSTF1')
      return MSTF1;
    if(text == 'MSTF2')
      return MSTF2;
    if(text == 'MSTF3')
      return MSTF3;
    if(text == 'MSTF4')
      return MSTF4;
    if(text == 'MSTF5')
      return MSTF5;
    if(text == 'MSTF6')
      return MSTF6;
    if(text == 'MSTF7')
      return MSTF7;
    if(text == 'MSTF8')
      return MSTF8;
    if(text == 'MSTF9')
      return MSTF9;
    if(text == 'MSTF10')
      return MSTF10;
    if(text == 'MSTF11')
      return MSTF11;
    if(text == 'MSTF12')
      return MSTF12;
    if(text == 'MSTF13')
      return MSTF13;
    if(text == 'MSTF14')
      return MSTF14;
    if(text == 'MSTF15')
      return MSTF15;
    if(text == 'MSTF16')
      return MSTF16;
    if(text == 'MSTF17')
      return MSTF17;
    if(text == 'MSTF18')
      return MSTF18;
    if(text == 'MSTF19')
      return MSTF19;
    if(text == 'MSTF20')
      return MSTF20;
    if(text == 'MSTF21')
      return MSTF21;
    if(text == 'MSTF22')
      return MSTF22;
    if(text == 'MSTF23')
      return MSTF23;
    if(text == 'MSTF24')
      return MSTF24;

    if(text == 'acc1')
      return acc1;
    if(text == 'acc2')
      return acc2;
    if(text == 'acc3')
      return acc3;
    if(text == 'acc4')
      return acc4;
    if(text == 'acc5')
      return acc5;
    if(text == 'acc6')
      return acc6;
    if(text == 'acc7')
      return acc7;
    if(text == 'acc8')
      return acc8;
    if(text == 'acc9')
      return acc9;
    if(text == 'acc2')
      return acc2;
    if(text == 'acc10')
      return acc10;
    if(text == 'acc11')
      return acc11;
    if(text == 'acc12')
      return acc12;
    if(text == 'acc13')
      return acc13;
    if(text == 'acc14')
      return acc14;
    if(text == 'acc15')
      return acc15;
    if(text == 'acc16')
      return acc16;
    if(text == 'acc17')
      return acc17;
    if(text == 'acc18')
      return acc18;
    if(text == 'acc19')
      return acc19;
    if(text == 'acc20')
      return acc20;
    if(text == 'acc21')
      return acc21;
    if(text == 'acc22')
      return acc22;
    if(text == 'acc23')
      return acc23;
    if(text == 'acc24')
      return acc24;

    if(text == 'case1')
      return case1;
    if(text == 'case2')
      return case2;
    if(text == 'case3')
      return case3;
    if(text == 'case4')
      return case4;
    if(text == 'case5')
      return case5;
    if(text == 'case6')
      return case6;
    if(text == 'case7')
      return case7;
    if(text == 'case8')
      return case8;
    if(text == 'case9')
      return case9;
    if(text == 'case10')
      return case10;
    if(text == 'case11')
      return case11;
    if(text == 'case12')
      return case12;
    if(text == 'case13')
      return case13;
    if(text == 'case14')
      return case14;
    if(text == 'case15')
      return case15;
    if(text == 'case16')
      return case16;
    if(text == 'case17')
      return case17;
    if(text == 'case18')
      return case18;
    if(text == 'case19')
      return case19;
    if(text == 'case20')
      return case20;
    if(text == 'case21')
      return case21;
    if(text == 'case22')
      return case22;
    if(text == 'case23')
      return case23;
    if(text == 'case24')
      return case24;
    return TextEditingController();
  }

  void setDrop(BuildContext context,String type,String value){

    if(type == 'halfDrop1'){
      halfDrop1 = value;
    }
    if(type == 'halfDrop2'){
      halfDrop2 = value;
    }
    if(type == 'halfDrop3'){
      halfDrop3 = value;
    }
    if(type == 'halfDrop4'){
      halfDrop4 = value;
    }
    if(type == 'halfDrop5'){
      halfDrop5 = value;
    }
    if(type == 'halfDrop6'){
      halfDrop6 = value;
    }
    if(type == 'halfDrop7'){
      halfDrop7 = value;
    }
    if(type == 'halfDrop8'){
      halfDrop8 = value;
    }
    if(type == 'halfDrop9'){
      halfDrop9 = value;
    }
    if(type == 'halfDrop10'){
      halfDrop10 = value;
    }
    if(type == 'halfDrop11'){
      halfDrop11 = value;
    }
    if(type == 'halfDrop12'){
      halfDrop12 = value;
    }
    if(type == 'halfDrop13'){
      halfDrop13 = value;
    }
    if(type == 'halfDrop14'){
      halfDrop14 = value;
    }
    if(type == 'halfDrop15'){
      halfDrop15 = value;
    }
    if(type == 'halfDrop16'){
      halfDrop16 = value;
    }
    if(type == 'halfDrop17'){
      halfDrop17 = value;
    }
    if(type == 'halfDrop18'){
      halfDrop18 = value;
    }
    if(type == 'halfDrop19'){
      halfDrop19 = value;
    }
    if(type == 'halfDrop20'){
      halfDrop20 = value;
    }
    if(type == 'halfDrop21'){
      halfDrop21 = value;
    }
    if(type == 'halfDrop22'){
      halfDrop22 = value;
    }
    if(type == 'halfDrop23'){
      halfDrop23 = value;
    }
    if(type == 'halfDrop24'){
      halfDrop24 = value;
    }

    if(type == 'twohoursDrop1'){
      twohoursDrop1 = value;
    }
    if(type == 'twohoursDrop2'){
      twohoursDrop2 = value;
    }
    if(type == 'twohoursDrop3'){
      twohoursDrop3 = value;
    }
    if(type == 'twohoursDrop4'){
      twohoursDrop4 = value;
    }
    if(type == 'twohoursDrop5'){
      twohoursDrop5 = value;
    }
    if(type == 'twohoursDrop6'){
      twohoursDrop6 = value;
    }

    if(type == 'fourHoursDrop1'){
      fourHoursDrop1 = value;
    }
    if(type == 'fourHoursDrop2'){
      fourHoursDrop2 = value;
    }
    if(type == 'fourHoursDrop3'){
      fourHoursDrop3 = value;
    }
  }

  String getDrop(String type){
    if(type == 'halfDrop1'){
      return halfDrop1;
    }
    if(type == 'halfDrop2'){
      return halfDrop2;
    }
    if(type == 'halfDrop3'){
      return halfDrop3;
    }
    if(type == 'halfDrop4'){
      return halfDrop4;
    }
    if(type == 'halfDrop5'){
      return halfDrop5;
    }
    if(type == 'halfDrop6'){
      return halfDrop6;
    }
    if(type == 'halfDrop7'){
      return halfDrop7;
    }
    if(type == 'halfDrop8'){
      return halfDrop8;
    }
    if(type == 'halfDrop9'){
      return halfDrop9;
    }
    if(type == 'halfDrop10'){
      return halfDrop10;
    }
    if(type == 'halfDrop11'){
      return halfDrop11;
    }
    if(type == 'halfDrop12'){
      return halfDrop12;
    }
    if(type == 'halfDrop13'){
      return halfDrop13;
    }
    if(type == 'halfDrop14'){
      return halfDrop14;
    }
    if(type == 'halfDrop15'){
      return halfDrop15;
    }
    if(type == 'halfDrop16'){
      return halfDrop16;
    }
    if(type == 'halfDrop17'){
      return halfDrop17;
    }
    if(type == 'halfDrop18'){
      return halfDrop18;
    }
    if(type == 'halfDrop19'){
      return halfDrop19;
    }
    if(type == 'halfDrop20'){
      return halfDrop20;
    }
    if(type == 'halfDrop21'){
      return halfDrop21;
    }
    if(type == 'halfDrop22'){
      return halfDrop22;
    }
    if(type == 'halfDrop23'){
      return halfDrop23;
    }
    if(type == 'halfDrop24'){
      return halfDrop24;
    }

    if(type == 'twohoursDrop1'){
      return twohoursDrop1;
    }
    if(type == 'twohoursDrop2'){
      return twohoursDrop2;
    }
    if(type == 'twohoursDrop3'){
      return twohoursDrop3;
    }
    if(type == 'twohoursDrop4'){
      return twohoursDrop4;
    }
    if(type == 'twohoursDrop5'){
      return twohoursDrop5;
    }
    if(type == 'twohoursDrop6'){
      return twohoursDrop6;
    }

    if(type == 'fourHoursDrop1'){
      return fourHoursDrop1;
    }
    if(type == 'fourHoursDrop2'){
      return fourHoursDrop2;
    }
    if(type == 'fourHoursDrop3'){
      return fourHoursDrop3;
    }
    return '';
  }

}