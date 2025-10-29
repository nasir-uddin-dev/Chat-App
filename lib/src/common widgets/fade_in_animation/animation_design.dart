import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';

class NFadeAnimation extends StatelessWidget {
  const NFadeAnimation({
    super.key,
    this.animate,
    required this.durationInMs,
    required this.child,
  });

  final int durationInMs;

  final NAnimatePosition? animate;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NFadeInAnimationController());
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left: controller.animate.value
            ? animate!.leftAfter
            : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        ),
      ),
    );
  }
}
