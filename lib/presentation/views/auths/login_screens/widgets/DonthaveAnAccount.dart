import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/signup_screens/signupScreen.dart';





class donthaveanaccount extends StatelessWidget {
  const donthaveanaccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Don\’t have an account?', style: payTextStyles.playSmNormalText,),
        const SizedBox(width: 4,),
        TextButton(
            onPressed: (){
              Get.to(const SignupScreen());
            },
            child: Text('Sign Up', style: payTextStyles.playForgetPasswordSm,)
        ),
      ],
    );
  }
}
