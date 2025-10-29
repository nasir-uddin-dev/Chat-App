import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/animation_design.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:signin_signup_firebase/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:signin_signup_firebase/src/constants/colors.dart';
import 'package:signin_signup_firebase/src/constants/image_string.dart';
import 'package:signin_signup_firebase/src/constants/size.dart';
import 'package:signin_signup_firebase/src/constants/text_string.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/login/login_screen.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/sign%20up/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NFadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? secondaryColor : primaryColor,
      body: Stack(
        children: [
          NFadeAnimation(
            durationInMs: 1200,
            animate: NAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(welComeImg), height: height * 0.6),
                  Column(
                    children: [
                      Text(
                        welComeTitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        welComeSubTitle,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Get.to(() => const LoginScreen());
                          },
                          child: Text(login.toUpperCase()),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const SignUpScreen());
                          },
                          child: Text(signUp.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
