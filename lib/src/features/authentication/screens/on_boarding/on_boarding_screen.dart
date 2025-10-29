import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:signin_signup_firebase/src/constants/colors.dart';
import 'package:signin_signup_firebase/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final obcontroller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            onPageChangeCallback: obcontroller.onPageChangeCallback,
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 70,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () => obcontroller.animateToNextSlide(),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: darkColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: const Text('Skip', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 30,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                effect: WormEffect(
                  activeDotColor: Color(0xff1000FD),
                  dotHeight: 5,
                ),
                count: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
