import 'package:flutter/material.dart';
import 'package:signin_signup_firebase/src/common%20widgets/form/form_header_widget.dart';
import 'package:signin_signup_firebase/src/constants/image_string.dart';
import 'package:signin_signup_firebase/src/constants/size.dart';
import 'package:signin_signup_firebase/src/constants/text_string.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: welComeImg,
                  title: loginTitle,
                  subTitle: loginSubTitle,
                ),
                const LoginFormWidget(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
