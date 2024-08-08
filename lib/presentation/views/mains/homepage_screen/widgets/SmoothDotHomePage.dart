import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/HomePageController.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SmoothDotHomePage extends StatelessWidget {
  const SmoothDotHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomePageController.instance;
    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: const WormEffect(
        spacing: 5,
        activeDotColor: Color(0xFFffffff),
        dotColor:Colors.grey,
        dotWidth: 5,
        dotHeight:5,
      ),
    );
  }
}