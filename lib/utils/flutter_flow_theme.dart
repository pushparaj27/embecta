// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';

const String constFontFamily = 'Anek Latin';

const double constLineHeight = 1.2;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

double deviceHeight = 0.0;

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color lightOrange;
  late Color dark;
  late Color lightGreen;
  late Color darkBlue;
  late Color black43;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color neutralGrey;
  late Color green90;
  late Color togglegreen;
  late Color green110;
  late Color yellow100;
  late Color black;
  late Color coolGrey90;
  late Color orange80;
  late Color coolGrey110;
  late Color coolGrey80;
  late Color coolGrey100;
  late Color premiumRedGradient2;
  late Color coolGrey120;
  late Color blue80;
  late Color lightPink;
  late Color blue110;
  late Color yellow99;
  late Color neutralGrey100;
  late Color neutralGrey120;
  late Color neutralGrey110;
  late Color grey97;
  late Color darkGrey25;
  late Color darkGrey;
  late Color coolGray80;
  late Color yellow80;
  late Color yellow120;
  late Color yellow90;
  late Color primaryCapitalRed110;
  late Color primarySupportYellow110;
  late Color primarySupportYellow120;
  late Color secondaryOrange90;
  late Color secondaryOrange100;
  late Color orange110;
  late Color secondaryOrange120;
  late Color secondaryGreen80;
  late Color secondaryGreen100;
  late Color secondaryGreen120;
  late Color secondaryBlue90;
  late Color secondaryBlue100;
  late Color secondaryBlue120;
  late Color neutralGrey80;
  late Color neutralGrey90;
  late Color f4f6f9;
  late Color secondarySupportGreen;
  late Color secondaryProgressiveGreen;
  late Color secondaryInnovationPurple;
  late Color secondaryWarmIvory;
  late Color tableGrey;
  late Color black30;
  late Color tableOrange;
  late Color tableGreen;
  late Color tableLightPink;
  late Color tableDarkPink;
  late Color palepink;
  late Color yelloworange;
  late Color secondaryPink;
  late Color paleOrange;
  late Color secondaryGrey;




}

DeviceSize getDeviceSize(BuildContext context) {
  deviceHeight = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFC7222A);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF202428);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color lightOrange = const Color(0xFFFCCA67);
  late Color dark = const Color(0xFF5A5A5A);
  late Color lightGreen = const Color(0xFFE0E1E1);
  late Color darkBlue = const Color(0xFF1F6CFF);
  late Color black43 = const Color(0xFF434343);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color neutralGrey = Color(0xFFF1F3F6);
  late Color green90 = Color(0xFF8DCDA9);
  late Color togglegreen = Color(0xFF12B28C);
  late Color green110 = Color(0xFF0A6A34);
  late Color yellow100 = Color(0xFFFAA61A);
  late Color yellow99 = Color(0xFFF7A500);
  late Color black = Color(0xFF000000);
  late Color coolGrey90 = Color(0xFFD5D7DE);
  late Color orange80 = Color(0xFFFFE7E5);
  late Color coolGrey110 = Color(0xFF979CAE);
  late Color coolGrey80 = Color(0xFFF9FAFB);
  late Color coolGrey100 = Color(0xFFAFB3C0);
  late Color premiumRedGradient2 = Color(0xFF911C22);
  late Color coolGrey120 = Color(0xFF767D93);
  late Color blue80 = Color(0xFFF2F6FE);
  late Color lightPink = Color(0xFFD8797E);
  late Color blue110 = Color(0xFF144DB8);
  late Color neutralGrey100 = Color(0xFF797979);
  late Color neutralGrey120 = Color(0xFF2E2E2E);
  late Color neutralGrey110 = Color(0xFF4C4C4C);
  late Color grey97 = Color(0xFF979797);
  late Color darkGrey25 = Color(0xFF252525);
  late Color coolGray80 = Color(0xFFCE2B49);
  late Color yellow80 = Color(0xFFFFF4CE);
  late Color yellow120 = Color(0xFF845800);
  late Color yellow90 = Color(0xFFFFD56C);
  late Color primaryCapitalRed110 = Color(0xFF8A0B1C);
  late Color primarySupportYellow110 = Color(0xFFD99202);
  late Color primarySupportYellow120 = Color(0xFF845800);
  late Color secondaryOrange90 = Color(0xFFFD8A72);
  late Color secondaryOrange100 = Color(0xFFF16548);
  late Color orange110 = Color(0xFFD34528);
  late Color secondaryOrange120 = Color(0xFFAB2E14);
  late Color secondaryGreen80 = Color(0xFFE7FCF4);
  late Color secondaryGreen100 = Color(0xFF1F874C);
  late Color secondaryGreen120 = Color(0xFF034C22);
  late Color secondaryBlue90 = Color(0xFF8CACE7);
  late Color secondaryBlue100 = Color(0xFF4374D0);
  late Color secondaryBlue120 = Color(0xFF062662);
  late Color neutralGrey80 = Color(0xFFF7F7F7);
  late Color neutralGrey90 = Color(0xFFE6E6E6);
  late Color f4f6f9 = Color(0xFFF4F6F9);
  late Color darkGrey = Color(0xFF333638);
  late Color secondarySupportGreen = Color(0xFFBDD753);
  late Color secondaryProgressiveGreen = Color(0xFF70B865);
  late Color secondaryInnovationPurple = Color(0xFF7C2279);
  late Color secondaryWarmIvory = Color(0xFFFFF4D9);
  late Color tableGrey = Color(0xFFEBEBEB);
  late Color black30 = Color(0xFF2D2D2D);
  late Color tableOrange = Color(0xFFFFF3D5);
  late Color tableGreen = Color(0xFFE6FFE2);
  late Color tableLightPink = Color(0xFFFFE5FE);
  late Color tableDarkPink = Color(0xFFFFCECE);
  late Color palepink = Color(0xFFFFACFF);
  late Color yelloworange = Color(0xFFF59043);
  late Color secondaryPink = Color(0xFFFE6868);
  late Color paleOrange =Color.fromARGB(110,255, 245, 235);
  late Color secondaryGrey = Color(0xFF646875);
  // Color(0xFFfff5db);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
  TextStyle get bodyCopy5;
  TextStyle get sectionHeadings;
  TextStyle get drawerHeadings;
}

// class MobileTypography extends Typography {
//   MobileTypography(this.theme);
//
//   final FlutterFlowTheme theme;
//
//   ///Headings/Card Heading && Headings/L2 Page Title - 1
//   String get labelLargeFamily => constFontFamily;
//   TextStyle get labelLarge => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.secondaryText,
//         fontWeight: FontWeight.w500,
//         fontSize: 18.0,
//         height: 1.2,
//       );
//
//   ///Headings/Subheading - 3
//   String get labelMediumFamily => constFontFamily;
//   TextStyle get labelMedium => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.secondaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 18.0,
//         height: 1.2,
//       );
//
//   ///Heading/Subheading Light - 4
//   String get bodyLargeFamily => constFontFamily;
//   TextStyle get bodyLarge => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.normal,
//         fontSize: 18.0,
//         height: 1.2,
//       );
//
//   ///Heading/L1 Page Title - 5
//   String get bodySmallFamily => constFontFamily;
//   TextStyle get bodySmall => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Body/1
//   String get displayLargeFamily => constFontFamily;
//   TextStyle get displayLarge => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.normal,
//         fontSize: 18.0,
//         height: 1.2,
//       );
//
//   ///Body/2
//   String get displayMediumFamily => constFontFamily;
//   TextStyle get displayMedium => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.normal,
//         fontSize: 16.0,
//         height: 1.2,
//       );
//
//   ///Body/3
//   String get displaySmallFamily => constFontFamily;
//   TextStyle get displaySmall => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Body/4
//   String get headlineLargeFamily => constFontFamily;
//   TextStyle get headlineLarge => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.normal,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Supporting/Helper
//   String get headlineMediumFamily => constFontFamily;
//   TextStyle get headlineMedium => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Supporting/Overline + Label Title
//   ///Please create a widget with the uppercase and use them globally for this style
//   String get headlineSmallFamily => constFontFamily;
//   TextStyle get headlineSmall => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 14.0,
//         letterSpacing: 1.5,
//         height: 1.2,
//       );
//
//   ///Supporting/Link
//   String get titleLargeFamily => constFontFamily;
//   TextStyle get titleLarge => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Suporting/Button/Large
//   String get bodyMediumFamily => constFontFamily;
//   TextStyle get bodyMedium => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.primaryText,
//         fontWeight: FontWeight.w600,
//         fontSize: 16.0,
//         height: 1.2,
//       );
//
//   ///Supporting/Button/Small
//   String get labelSmallFamily => constFontFamily;
//   TextStyle get labelSmall => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.secondaryText,
//         fontWeight: FontWeight.w500,
//         fontSize: 14.0,
//         height: 1.2,
//       );
//
//   ///Supporting/Button/Small2
//   String get titleMediumFamily => constFontFamily;
//   TextStyle get titleMedium => GoogleFonts.getFont(
//         constFontFamily,
//         color: theme.secondaryBackground,
//         fontWeight: FontWeight.w600,
//         fontSize: 12.0,
//         height: 1.2,
//       );
//
//   ///large
//   TextStyle get large => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: 20.0,
//         height: 1.2,
//       );
//
//   ///Numbers and Values prominent elements
//   String get numbersAndValuesFamily => constFontFamily;
//   TextStyle get numbersAndValues => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.normal,
//         fontSize: 20.0,
//         height: 1.2,
//       );
//
//   TextStyle get xLarge => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: 24.0,
//         height: 1.2,
//       );
//
//   TextStyle get xxLarge => GoogleFonts.getFont(constFontFamily,
//       fontWeight: FontWeight.w600, fontSize: 32.0, height: 1.2);
//
//   TextStyle get xxxLarge => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: 40.0,
//         height: 1.2,
//       );
//
//   TextStyle get titleSmall => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.normal,
//         fontSize: 10.0,
//         height: 1.2,
//       );
//
//   String get titleSmallFamily => constFontFamily;
//
//   TextStyle get bodyCopy5 => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.normal,
//         fontSize: 12.0,
//         height: 1.3,
//       );
//
//   TextStyle get sectionHeadings => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.w500,
//         fontSize: 12.0,
//         height: 1.2,
//       );
//
//   TextStyle get drawerHeadings => GoogleFonts.getFont(
//         constFontFamily,
//         fontWeight: FontWeight.w600,
//         fontSize: 12.0,
//         height: 1.2,
//       );
// }







List<FontWeight> fontWeights = <FontWeight>[
  FontWeight.w100,
  FontWeight.w200,
  FontWeight.w300,
  FontWeight.w400,
  FontWeight.w500,
  FontWeight.w600,
  FontWeight.w700,
  FontWeight.w800,
];

