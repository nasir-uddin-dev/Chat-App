import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup_firebase/src/features/authentication/controllers/sign_up_controller.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({super.key});

  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextFormField(
                controller: controller.fullNameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  hintText: fullName,
                  labelText: fullName,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: controller.emailController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: email,
                  labelText: email,
                ),
                validator: (String? value) {
                  String inputText = value ?? " ";
                  if (EmailValidator.validate(inputText) == false) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: controller.mobileController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: mobile,
                  labelText: mobile,
                ),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter a mobile number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: controller.passwordController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  hintText: password,
                  labelText: password,
                ),
                validator: (String? value) {
                  if ((value?.length ?? 0) <= 6) {
                    return 'Enter a password more than 6 letters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      SignUpController.instance.registerUser(
                        controller.emailController.text.trim(),
                        controller.passwordController.text,
                      );
                      // SignUpController.instance.phoneAuthentication(
                      //   controller.mobileController.text.trim(),
                      // );
                    }
                  },
                  child: Text(signUp.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
