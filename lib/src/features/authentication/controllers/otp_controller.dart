import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/dash_board_screen/dash_board_screen.dart';
import 'package:signin_signup_firebase/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOtp(otp);
    isVerified ? Get.offAll(const DashBoardScreen()) : Get.back();
  }
}
