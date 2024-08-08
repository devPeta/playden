import 'dart:async';
import 'package:flutter/material.dart';
import 'package:playden/core/constant/playImages.dart';
import 'onBoarding/onboardingScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const onboardingScreen(),),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Center(
              child: Image.asset(playImages.splashLogo,
            fit: BoxFit.cover,
            width: 50, height: 50, alignment: Alignment.center,))),
    );
  }
}
