import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/constant/playTextStyles.dart';
import '../signupController.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(SignUpController());

    return Form(
        key: controller.signUpFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              style: payTextStyles.playBodyTextFieldFilled,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: payTextStyles.playHintTextField,
                suffixIcon: const Icon(Icons.person_outline_sharp, color: Color(0xFF6C757D),),
              ),
            ),
            SizedBox(height: screenHeight * 0.01,),
            TextField(
              style: payTextStyles.playBodyTextFieldFilled,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: payTextStyles.playHintTextField,
                suffixIcon: const Icon(Icons.email_outlined, color: Color(0xFF6C757D),),
              ),
            ),
            SizedBox(height: screenHeight * 0.01,),
            TextField(
              style: payTextStyles.playBodyTextFieldFilled,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: payTextStyles.playHintTextField,
                suffixIcon: const Icon(Icons.person_outline_sharp, color: Color(0xFF6C757D),),
              ),
              keyboardType: const TextInputType.numberWithOptions(),
            ),
            SizedBox(height: screenHeight * 0.01,),
            TextField(
              style: payTextStyles.playBodyTextFieldFilled,
              decoration: InputDecoration(
                hintText: 'Location',
                hintStyle: payTextStyles.playHintTextField,
              ),
            ),
            SizedBox(height: screenHeight * 0.01,),
            Obx(
              () => TextField(
                style: payTextStyles.playBodyTextFieldFilled,
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: payTextStyles.playHintTextField,
                  suffixIcon:  IconButton(onPressed: () => controller.hidePassword.value
                  = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? Icons.visibility_off : Icons.visibility,
                      color:  const Color(0xFF6C757D),),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.01,),
            Obx(
              ()=> TextField(
                style: payTextStyles.playBodyTextFieldFilled,
                controller: controller.rePassword,
                obscureText: controller.reHidePassword.value,
                decoration: InputDecoration(
                  hintText: 'Re-enter Password',
                  hintStyle: payTextStyles.playHintTextField,
                  suffixIcon:  IconButton(onPressed: () => controller.reHidePassword.value
                  = !controller.reHidePassword.value,
                    icon: Icon(controller.reHidePassword.value ? Icons.visibility_off : Icons.visibility,
                      color:  const Color(0xFF6C757D),),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}