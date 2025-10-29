import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreenController extends GetxController {
  SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));

    Get.offAll(const WelcomeScreen());
  }
}
