import 'package:flutter/material.dart';

import '../../contents/colors.dart';

class CChipTheme{
  CChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: CColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: CColors.black),
    selectedColor: CColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: CColors.darkerGrey,
    labelStyle: TextStyle(color: CColors.white),
    selectedColor: CColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CColors.white,
  );
}