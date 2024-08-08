import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playTextStyles.dart';

import '../loginController.dart';



  class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(logInController());
    return Form(
      key: controller.signInFormKey,
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
        ],
      ),
    );
  }
}
