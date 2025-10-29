import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: 4),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(googleLogoImg), width: 20),
            onPressed: () {},
            label: Text(signInWithGoogle),
          ),
        ),
        SizedBox(height: 4),
        Row(
          spacing: 2,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text(alreadyHaveAnAccount)),
            TextButton(onPressed: () {}, child: Text(signUp)),
          ],
        ),
      ],
    );
  }
}
