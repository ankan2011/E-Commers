
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/contents/colors.dart';
import '../../../../../utils/contents/texts.dart';

class CPrivacyPolicyCheckbox extends StatelessWidget {
  const CPrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: '${CTexts.iAgreeTo} '),
              TextSpan(
                text: '${CTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color: dark ? CColors.white : CColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:dark ? CColors.white : CColors.primary,
                ),
              ), // TextSpan
              TextSpan(text: '${CTexts.and} '),
              TextSpan(
                text: CTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color: dark ? CColors.white : CColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? CColors.white : CColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}