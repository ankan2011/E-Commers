import 'package:flutter/material.dart';

import '../../contents/colors.dart';
import '../../contents/sizes.dart';

class CElevatedButtonTheme {
  CElevatedButtonTheme._();
  
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CColors.light,
      backgroundColor: CColors.primary,
      disabledForegroundColor: CColors.darkGrey,
      disabledBackgroundColor: CColors.buttonDisabled,
      side: const BorderSide(color: CColors.light),
      padding: const EdgeInsets.symmetric(vertical: CSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: CColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );


  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CColors.light,
      backgroundColor: CColors.primary,
      disabledForegroundColor: CColors.darkGrey,
      disabledBackgroundColor: CColors.darkerGrey,
      side: const BorderSide(color: CColors.primary),
      padding: const EdgeInsets.symmetric(vertical: CSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: CColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );
}