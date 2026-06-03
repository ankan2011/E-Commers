import 'package:e_commerce/common/style/padding.dart';
import 'package:flutter/material.dart';

import '../../../utils/contents/images.dart';
import '../../../utils/contents/sizes.dart';
import '../../../utils/contents/texts.dart';
import '../../../utils/helpers/device_helpers.dart';
import '../button/elevated_button.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onTap});

  final String  image, title,subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: CPadding.screenPadding,
        child: Column(
          children: [
            /// Image
            Image.asset(image, height: CDeviceHelper.getScreenWidth(context) * 0.6),
            SizedBox (height: CSizes.spaceBtwItems),
            /// Title
            Text(title, style: Theme.of (context).textTheme.headlineMedium, textAlign: TextAlign.center),
            SizedBox (height: CSizes.spaceBtwItems),
            /// Subtitle
            Text(subtitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
            SizedBox (height: CSizes.spaceBtwSections),
            /// Continue
            CElevatedButton (onPressed: onTap, child: Text (CTexts.uContinue))
          ],
        ),),
      ),
    );
  }
}
