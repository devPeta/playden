import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import '../../../../core/constant/playImages.dart';
import '../../mains/mainview_navigator.dart';
import '../login_screens/loginScreen.dart';
class preLogin extends StatelessWidget {
  const preLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const loginScreen());
                  },
                  child: Text('Login', style: payTextStyles.playElevatedButtonText,),
                ),
              ),

              const SizedBox(height: 2,),

              ///Outlined  Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: (){
                    Get.to(const mainViewNavigator());
                  },
                  child: Text('Login as guest', style: payTextStyles.playOutlinedButtonText,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
