import 'package:e_commerce/features/authentication/controllers/onbording/onbording_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../utils/contents/sizes.dart';

class OnBordingNextButton extends StatelessWidget {
  const OnBordingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBordingController.instance;

    return Positioned(
      left: 0,
      right: 0,
      bottom: CSizes.spaceBtwItems,
      child: CElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        child: Obx(
          () =>
              Text(controller.currentIndex.value == 2 ? "Get Started" : "Next"),
        ),
      ),
    );
  }
}
