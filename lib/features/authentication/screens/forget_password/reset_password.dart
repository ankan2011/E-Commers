import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/contents/images.dart';
import 'package:e_commerce/utils/contents/sizes.dart';
import 'package:e_commerce/utils/contents/texts.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Get.offAll(LoginScreen());
          }, icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: CPadding.screenPadding,
        child: Column(
          children: [
            Image.asset(CImages.mailSentImage,height: CDeviceHelper.getScreenWidth(context) * 0.6,),
            SizedBox(height: CSizes.spaceBtwItems,),

            Text(CTexts.resetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: CSizes.spaceBtwItems,),

            Text('ankanpanja2011@gmail.com',style: Theme.of(context).textTheme.bodyMedium,),
            SizedBox(height: CSizes.spaceBtwItems,),

            Text(CTexts.resetPasswordSubTitle,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
            SizedBox(height: CSizes.spaceBtwSections,),

            CElevatedButton(onPressed: (){}, child: Text(CTexts.done)),

            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text(CTexts.resendEmail)),
            )



          ],
        ),),
      ),
    );
  }
}
