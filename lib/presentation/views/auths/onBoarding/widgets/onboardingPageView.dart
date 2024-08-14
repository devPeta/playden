import 'package:flutter/material.dart';
import '../../../../../core/constant/playTextStyles.dart';



class onboardingPageView extends StatelessWidget {
  final String title;
  final String imgPaths;
  final String subtitle;
  const onboardingPageView({
    super.key,
    required this.title,
    required this.imgPaths,
    required this.subtitle,
  });


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title, style: payTextStyles.playOnboardingBlackTitle,),
        SizedBox(height: screenHeight * 0.01,),
        Center(child: Image.asset( imgPaths, height: 400,)),
        SizedBox(height: screenHeight * 0.01,),
        Text(subtitle, style: payTextStyles.playOnboardingSubTitle,),
      ],
    );
  }
}
