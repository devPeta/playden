import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playColors.dart';
import 'package:playden/core/constant/playSpacing.dart';
import '../../../../core/constant/playImages.dart';
import '../login_screens/loginScreen.dart';
class preLogin extends StatelessWidget {
  const preLogin({Key? key}) : super(key: key);

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
              
              Center(
                child: Image.asset(
                    playImages.obImg,
                ),
              ),

              SizedBox(height: screenHeight * 0.01,),

              ///Elevated Button
              Center(
                child: PlayButton(
                  label: 'Login',
                  onTap: () {
                    Get.to(const loginScreen());
                  },
                  height: 45,
                  width: 171,
                  color: playColors.primary,
                  borderRadius: 12.0,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 2,),

              ///Outlined  Button
              PlayButton(
                label: 'Login As Guest',
                onTap: () {
                  Get.to(const loginScreen());
                },
                height: 45,
                width: 171,
                color: const Color(0xffffffff),
                border: Border.all(
                  color: const Color(0xFF8F55A2),
                  style: BorderStyle.solid,
                  width: 2,
                ),
                borderRadius: 12.0,
                textStyle: const TextStyle(
                  color: Color(0xFF41244B),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
