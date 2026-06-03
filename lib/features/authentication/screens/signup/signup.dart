import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/social_button.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:e_commerce/utils/contents/sizes.dart';
import 'package:e_commerce/utils/contents/texts.dart';
import 'package:flutter/material.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: CPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --Header--
              /// -Title-
              Text(
                CTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: CSizes.spaceBtwSections),

              /// --From--
              CSignupForm(),
              /// --Divider--
              CFormDivider(title: CTexts.orSignupWith),
              SizedBox(height: CSizes.spaceBtwSections),
              SizedBox(height: CSizes.spaceBtwSections),

              /// --Footer--
              CSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


