import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/mains/mainview_navigator.dart';




class loginButton extends StatelessWidget {
  const loginButton({
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
        child: Text('LOGIN', style: payTextStyles.playElevatedButtonText,),
      ),
    );
  }
}