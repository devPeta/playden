import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/forget_password/recoverpassword2controller.dart';
import 'package:playden/presentation/views/auths/forget_password/setupSuccess.dart';
class recoveryPassword2 extends StatelessWidget {
  const recoveryPassword2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(recoverypassword2Controller());
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: playSpacing.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: screenHeight * 0.2,
              ),

              Form(
              key: controller.recoveryPassword2FormKey,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text('Password', style: payTextStyles.playSmNormalText,),
                  const SizedBox(height: 2,),
                  Obx(
                        () =>TextField(
                      style: payTextStyles.playBodyTextFieldFilled,
                      controller: controller.password,
                      obscureText: controller.hidePassword.value,
                      decoration: InputDecoration(
                        hintStyle: payTextStyles.playHintTextField,
                        hintText: '*******',
                        suffixIcon:  IconButton(onPressed: () => controller.hidePassword.value
                        = !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value ? Icons.visibility_off : Icons.visibility,
                        color:  const Color(0xFF6C757D),),
                      ),
                    ),
                    ),
                  ),

                  SizedBox(
                    height: screenHeight * 0.01
                  ),

                  Text('Confirm Password', style: payTextStyles.playSmNormalText,),
                  const SizedBox(height: 2,),
                  Obx(
                        () =>TextField(
                      style: payTextStyles.playBodyTextFieldFilled,
                      controller: controller.rePassword,
                      obscureText: controller.hideConfirmPassword.value,
                      decoration: InputDecoration(
                        hintStyle: payTextStyles.playHintTextField,
                        hintText: '*******',
                        suffixIcon:  IconButton(onPressed: () => controller.hideConfirmPassword.value
                        = !controller.hideConfirmPassword.value,
                          icon: Icon(controller.hideConfirmPassword.value ? Icons.visibility_off : Icons.visibility,
                            color:  const Color(0xFF6C757D),),
                      ),
                    ),
                    ),
                  ),
                ],
              )),

              SizedBox(
                height: screenHeight * 0.1,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const SetUpSuccess());
                  },
                  child: Text('Enter!', style: payTextStyles.playElevatedButtonText,),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}