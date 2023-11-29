import 'package:bg_trader/utils/theme/custom_themes/appbar_theme.dart';
import 'package:bg_trader/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:bg_trader/utils/theme/custom_themes/chip_theme.dart';
import 'package:bg_trader/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.yellow,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      // scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,


      );
  static ThemeData darkTheme = ThemeData();
}
