import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/forget_password/reset_password.dart';
import 'package:e_commerce/utils/contents/sizes.dart';
import 'package:e_commerce/utils/contents/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Padding(
            padding: CPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: CSizes.spaceBtwItems/1.5,),
              Text(CTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),

              SizedBox(height:CSizes.spaceBtwSections * 2 ),

              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: CTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height:CSizes.spaceBtwItems),

                  CElevatedButton(onPressed: (){
                    Get.to(ResetPasswordScreen());
                  }, child: Text(CTexts.submit)),
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
