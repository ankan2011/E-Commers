import 'package:e_commerce/common/widgets/button/social_button.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

import '../../../../common/style/padding.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/contents/sizes.dart';
import '../../../../utils/contents/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding (
        padding: CPadding.screenPadding,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        /// Title & SubTitle
        CLoginHeader(),
        SizedBox (height: CSizes.spaceBtwSections),

        /// -----[Form]-----
        CLoginForm(),
        SizedBox (height: CSizes.spaceBtwSections),

        /// -----[Divider]-----
        CFormDivider(title: CTexts.orSignInWith),
        SizedBox (height: CSizes.spaceBtwSections),
        SizedBox (height: CSizes.spaceBtwSections/2),

        /// -----[Footer]-----
        /// Social Buttons
          CSocialButtons()
            ]
        ),
        ),
       ),

    );

  }
}
