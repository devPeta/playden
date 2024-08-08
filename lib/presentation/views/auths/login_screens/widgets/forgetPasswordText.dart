import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/forget_password/forgetpassword.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              Get.to(const forgetpassword());
            },
            child: Text('Forget Password?', style: payTextStyles.playForgetPasswordSm,)
        ),
      ],
    );
  }
}