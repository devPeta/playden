import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constant/playTextStyles.dart';
import '../../login_screens/loginScreen.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Already have an account?', style: payTextStyles.playSmNormalText,),
        const SizedBox(width: 4,),
        TextButton(
            onPressed: (){
              Get.to(const loginScreen());
            },
            child: Text('Login', style: payTextStyles.playForgetPasswordSm,)
        ),
      ],
    );
  }
}