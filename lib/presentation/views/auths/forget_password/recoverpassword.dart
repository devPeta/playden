import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/forget_password/recoverpassword2.dart';
class recoveryPassword extends StatelessWidget {
  const recoveryPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: playSpacing.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              SizedBox(height: screenHeight * 0.2,),
              Text('Phone Number', style: payTextStyles.playSmNormalText,),
              SizedBox(height: screenHeight * 0.01,),
              TextField(
                style: payTextStyles.playBodyTextFieldFilled,
                decoration: InputDecoration(
                  hintStyle: payTextStyles.playHintTextField,
                  hintText: 'Enter phone number',
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const recoveryPassword2());
                  },
                  child: Text('Recover', style: payTextStyles.playElevatedButtonText,),
                ),
              ),

          ],
        ),
        ),
      ),
    );
  }
}
