import 'package:flutter/material.dart';
import 'package:signin_signup_firebase/src/common%20widgets/form/form_header_widget.dart';
import 'package:signin_signup_firebase/src/constants/image_string.dart';
import 'package:signin_signup_firebase/src/constants/size.dart';
import 'package:signin_signup_firebase/src/constants/text_string.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/sign%20up/widget/sign_up_footer_widget.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/sign%20up/widget/sign_up_form_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: welComeImg,
                  title: signUpTitle,
                  subTitle: signUpSubTitle,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


