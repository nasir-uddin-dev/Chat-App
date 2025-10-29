import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:signin_signup_firebase/src/constants/colors.dart';
import 'package:signin_signup_firebase/src/constants/image_string.dart';
import 'package:signin_signup_firebase/src/constants/size.dart';
import 'package:signin_signup_firebase/src/constants/text_string.dart';

import '../../../../common widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final controller = Get.put(NFadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          NFadeAnimation(
            durationInMs: 1600,
            animate: NAnimatePosition(
              topBefore: -30,
              leftBefore: -30,
              topAfter: 50,
              leftAfter: 30,
            ),
            child: Image(
              image: AssetImage(splashIcon),
              height: size.height * 0.1,
            ),
          ),

          NFadeAnimation(
            durationInMs: 2000,
            animate: NAnimatePosition(
              topBefore: 140,
              topAfter: 140,
              leftAfter: 50,
              leftBefore: -30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(appName, style: Theme.of(context).textTheme.bodyLarge),
                Text(appTagName, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),

          NFadeAnimation(
            durationInMs: 2400,
            animate: NAnimatePosition(
              leftBefore: -30,
              leftAfter: 20,
              bottomBefore: -10,
              bottomAfter: 80,
            ),
            child: Image(
              image: AssetImage(splashImage),
              height: size.height * 0.8,
              width: size.width * 0.8,
            ),
          ),

          NFadeAnimation(
            durationInMs: 2400,
            animate: NAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: defaultSize,
              rightAfter: defaultSize,
            ),
            child: Container(
              width: splashContainerSize,
              height: splashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: babyBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
