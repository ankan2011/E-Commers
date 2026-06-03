import 'package:e_commerce/features/authentication/controllers/onbording/onbording_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/helpers/device_helpers.dart';

class OnBordingDotNavigation extends StatelessWidget {
  const OnBordingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBordingController.instance;
    return Positioned(
        bottom: CDeviceHelper.getBottomNavigationBarHeight() * 4,
        left: CDeviceHelper.getScreenWidth(context) /3,
        right: CDeviceHelper.getScreenWidth(context) /3,
        child:  SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,// PageController
          count:  3,
          axisDirection: Axis.horizontal,
          effect:ExpandingDotsEffect(
            dotHeight: 7,
          )
        )
    );
  }
}