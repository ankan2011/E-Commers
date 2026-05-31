import 'package:e_commerce/features/authentication/controllers/onbording/onbording_controller.dart';
import 'package:e_commerce/utils/contents/images.dart';
import 'package:e_commerce/utils/contents/sizes.dart';
import 'package:e_commerce/utils/contents/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/onbording_page.dart';
import 'onbording_dot_button.dart';
import 'onbording_nextbutton.dart';
import 'onbording_skip.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBordingController());

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: CSizes.defaultSpace),
        child: Stack(
          children: [
            //Scrollable Page
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBordingPage(animation: CImages.onboarding1Animation, title: CTexts.onBoardingTitle1, subtitle:CTexts.onBoardingSubTitle1,),
                OnBordingPage(animation: CImages.onboarding2Animation, title: CTexts.onBoardingTitle2, subtitle:CTexts.onBoardingSubTitle2,),
                OnBordingPage(animation: CImages.onboarding3Animation, title: CTexts.onBoardingTitle2, subtitle:CTexts.onBoardingSubTitle3,),


              ],
            ),

            //Indicator
            OnBordingDotNavigation(),

            //Button
            OnBordingNextButton(),

            //Skip Button
            OnBordingSkipButton(),

          ],
        ),
      ),
    );
  }
}










