import 'package:e_commerce/utils/contents/colors.dart';
import 'package:e_commerce/utils/theme/widgets_theme/appbar_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/text_from_field_theme.dart';
import 'package:e_commerce/utils/theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {

  //Singleton class
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Nunito',
  brightness: Brightness.light,
  primaryColor: CColors.primary,
  disabledColor: CColors.grey,
  textTheme: CTextTheme.lightTextTheme,
  chipTheme: CChipTheme.lightChipTheme,
  scaffoldBackgroundColor: CColors.white,
  appBarTheme: CAppBarTheme.lightAppBarTheme,
  checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
  bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
  elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
  outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: CColors.primary,
    disabledColor: CColors.grey,
    textTheme: CTextTheme.darkTextTheme,
    chipTheme: CChipTheme.darkChipTheme,
    scaffoldBackgroundColor: CColors.black,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
  );
}