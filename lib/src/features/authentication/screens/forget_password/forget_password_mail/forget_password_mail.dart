import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/constants/image_string.dart';
import 'package:signin_signup_firebase/src/constants/size.dart';
import 'package:signin_signup_firebase/src/constants/text_string.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../common widgets/form/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children:  [
               const SizedBox(height: defaultSize * 4),
               const FormHeaderWidget(
                  image: forgetPasswordImg,
                  title: forgetPasswordTitle,
                  subTitle: forgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,
                ),
               const SizedBox(height: 20,),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:const InputDecoration(
                          hintText: email,
                          labelText: email,
                          prefixIcon: Icon(Icons.email_outlined)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                          child: ElevatedButton(onPressed: (){
                            Get.to(() => OtpScreen());
                          }, child: Text("Next")))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
