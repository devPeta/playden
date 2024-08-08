import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playden/core/common/myBoxVerification.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/forget_password/recoverpassword.dart';
import '../../../../core/constant/playImages.dart';


class forgetpassword extends StatelessWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: playSpacing.paddingWithAppBarHeightBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03,),
            Image.asset(playImages.forgetPasswordVerified),
            SizedBox(height: screenHeight * 0.1,),
            Center(child: Text('Please enter the code we sent to SMS', style: payTextStyles.playSmNormalTextLight, textAlign: TextAlign.center,)),
            const SizedBox(height: 1),
            Center(child: Text('07066048648', style: payTextStyles.playSmNormalText, textAlign: TextAlign.center,)),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myBoxVerification(),
                  myBoxVerification(),
                  myBoxVerification(),
                  myBoxVerification(),
                ],
              ),
            ),

            SizedBox(height: screenHeight * 0.01,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\’t receive code?', style: payTextStyles.playSmNormalText,),
                const SizedBox(width: 4,),
                TextButton(
                    onPressed: (){},
                    child: Text('Resend Here', style: payTextStyles.playOutlinedButtonText,))
              ],
            ),

            SizedBox(height: screenHeight * 0.01,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(const recoveryPassword());
                },
                child: Text('Done', style: payTextStyles.playElevatedButtonText,),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
