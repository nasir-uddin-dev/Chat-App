import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text_string.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              forgetPasswordTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 30),
            ForgetPasswordButtonWidget(
              btnIcon: Icons.email_outlined,
              title: email,
              subTitle: resetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMailScreen());
              },
            ),
            SizedBox(height: 20),
            ForgetPasswordButtonWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: mobile,
              subTitle: resetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}