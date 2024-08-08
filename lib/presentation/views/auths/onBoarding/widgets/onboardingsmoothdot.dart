import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../boardingController.dart';

class onboardingSmoothDot extends StatelessWidget {
  const onboardingSmoothDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = BoardingController.instance;
    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(
          spacing: 5,
          activeDotColor: Color(0xFF000000),
          dotColor:Colors.grey,
          dotWidth:20,
          dotHeight:5,
        ),
    );
  }
}
