import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/presentation/views/mains/mainview_navigator.dart';
import '../../../../../core/constant/playTextStyles.dart';


class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          Get.to(const mainViewNavigator());
        },
        child: Text('SIGN UP', style: payTextStyles.playElevatedButtonText,),
      ),
    );
  }
}