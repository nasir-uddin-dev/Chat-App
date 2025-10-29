import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: onboardingImg1,
        title: onBoardingTitleLarge,
        subTitle: onBoardingBodyLarge,
        counterText: onBoardingCounter1,
        bgColor: onBoardingPage1Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: onboardingImg2,
        title: onBoardingTitleMedium,
        subTitle: onBoardingBodyMedium,
        counterText: onBoardingCounter2,
        bgColor: onBoardingPage2Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: onboardingImg3,
        title: onBoardingTitleSmall,
        subTitle: onBoardingBodySmall,
        counterText: onBoardingCounter3,
        bgColor: onBoardingPage3Color,
      ),
    ),
  ];

  void onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
