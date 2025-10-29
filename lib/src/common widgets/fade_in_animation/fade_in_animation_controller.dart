import 'package:get/get.dart';

import '../../features/authentication/screens/welcome_screen/welcome_screen.dart';

class NFadeInAnimationController extends GetxController {
 static NFadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.to(WelcomeScreen());
  }

 Future startAnimation() async {
   await Future.delayed(Duration(milliseconds: 500));
   animate.value = true;
 }
}