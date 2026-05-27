import 'package:flutter/material.dart';

import '../../contents/colors.dart';
import '../../contents/sizes.dart';



class COutlinedButtonTheme {
  COutlinedButtonTheme._();


  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor:CColors.dark,
      side: const BorderSide(color: CColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: CColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: CSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: CColors.light,
      side: const BorderSide(color: CColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: CColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: CSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );
}