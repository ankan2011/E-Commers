import 'package:e_commerce/features/authentication/controllers/onbording/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/device_helpers.dart';

class OnBordingSkipButton extends StatelessWidget {
  const OnBordingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBordingController.instance;

    return Obx(
      () => controller.currentIndex.value == 2
          ? SizedBox()
          : Positioned(
              top: CDeviceHelper.getAppBarHeight(),
              right: 0,
              child: TextButton(
                onPressed: () {
                  controller.skipPage();
                },
                child: Text("Skip"),
              ),
            ),
    );
  }
}
