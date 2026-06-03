import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/contents/colors.dart';

class CFormDivider extends StatelessWidget {
  const CFormDivider({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return
    /// Divider
    Row(
    children: [
    Expanded (child: Divider (indent: 60, endIndent: 5, thickness: 0.5,color:dark ? CColors.darkGrey : CColors.grey)),
    Text(title, style: Theme.of(context).textTheme.labelMedium),
    Expanded (child: Divider (indent: 5, endIndent: 60, thickness: 0.5, color:dark ? CColors.darkGrey : CColors.grey)),
    ]
     // Row
    );
  }
}
