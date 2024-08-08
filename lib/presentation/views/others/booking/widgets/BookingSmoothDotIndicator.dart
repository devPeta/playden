import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/booking/BookingController.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BookingSmoothDot extends StatelessWidget {
  const BookingSmoothDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = BookingController.instance;
    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: const WormEffect(
        spacing: 5,
        activeDotColor: Color(0xFFffffff),
        dotColor:Colors.grey,
        dotWidth: 10,
        dotHeight: 10,
      ),
    );
  }
}