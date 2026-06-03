import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widget/privary_policycheckbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/contents/sizes.dart';
import '../../../../../utils/contents/texts.dart';

class CSignupForm extends StatelessWidget {
  const CSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Firstname&Lastname
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: CTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: CSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: CTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: CSizes.spaceBtwInputFields),

        ///User
        TextFormField(
          decoration: InputDecoration(
            labelText: CTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: CSizes.spaceBtwInputFields),

        ///Ph number
        TextFormField(
          decoration: InputDecoration(
            labelText: CTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: CSizes.spaceBtwInputFields),

        ///Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: CTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: CSizes.spaceBtwInputFields / 2),

        /// I agree
        CPrivacyPolicyCheckbox(),
        SizedBox(height: CSizes.spaceBtwInputFields),

        /// Created
        CElevatedButton(onPressed: (){
          Get.to(VerifyEmailScreen());
        }, child: Text(CTexts.createAccount)),
        SizedBox(height: CSizes.spaceBtwInputFields/1),

      ],
    );
  }
}
