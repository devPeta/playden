import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playColors.dart';
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
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(170, 45),
                  ),
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
