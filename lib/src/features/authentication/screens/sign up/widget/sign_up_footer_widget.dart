import 'package:flutter/material.dart';

import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_string.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OR'),
        SizedBox(height: 4),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(googleLogoImg), width: 20),
            onPressed: () {},
            label: Text(signInWithGoogle),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text(alreadyHaveAnAccount)),
            TextButton(onPressed: () {}, child: Text(login)),
          ],
        ),
      ],
    );
  }
}
