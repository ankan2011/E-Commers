import 'package:flutter/material.dart';

import '../../../../../utils/contents/sizes.dart';
import '../../../../../utils/contents/texts.dart';

class CLoginHeader extends StatelessWidget {
  const CLoginHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return
    /// Title & Subtitle
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Text(
          CTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: CSizes.sm),

        /// SubTitle
        Text(
          CTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
