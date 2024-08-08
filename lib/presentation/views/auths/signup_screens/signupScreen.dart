import 'package:flutter/material.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'widgets/AlreadyHaveAnAccount.dart';
import 'widgets/signupbutton.dart';
import 'widgets/signupform.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: playSpacing.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SignUpForm(),
            SizedBox(height: screenHeight * 0.01,),
            const SignUpButton(),

            SizedBox(height: screenHeight * 0.1,),
            const AlreadyHaveAnAccount(),
          ],
        ),
        ),
      ),
    );
  }
}






