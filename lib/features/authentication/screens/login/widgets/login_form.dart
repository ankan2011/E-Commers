import 'package:e_commerce/features/authentication/screens/forget_password/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/contents/sizes.dart';
import '../../../../../utils/contents/texts.dart';

class CLoginForm extends StatelessWidget {
  const CLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: CTexts.email,
          ),
        ),
        SizedBox(height: CSizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: CTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: CSizes.spaceBtwInputFields / 2),

        /// Remember Me & Forget Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Remember Me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(CTexts.rememberMe),
              ],
            ),

            /// ForgetPassword
            TextButton(onPressed: () {
              Get.to(ForgetPasswordScreen());
            }, child: Text(CTexts.forgetPassword)),
          ],
        ),
        SizedBox(height: CSizes.spaceBtwSections),

        /// Sign In
        CElevatedButton(onPressed: () {}, child: Text(CTexts.signIn)),
        SizedBox(height: CSizes.spaceBtwItems / 1),

        /// Create Account
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {
                Get.to(Signup());
              }, child: Text(CTexts.createAccount)),
        ),
      ],
    );
  }
}
