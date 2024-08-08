import 'package:flutter/material.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'widgets/DonthaveAnAccount.dart';
import 'widgets/forgetPasswordText.dart';
import 'widgets/loginButton.dart';
import 'widgets/loginForm.dart';
class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

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

              SizedBox(height: screenHeight * 0.03,),
              const LoginForm(),

              SizedBox(height: screenHeight * 0.01,),
              const forgetPassword(),

              SizedBox(height: screenHeight * 0.03,),

              const loginButton(),

              SizedBox(height: screenHeight * 0.001,),
              const donthaveanaccount(),

            ],
          ),
            ),
      ),
    );
  }
}






