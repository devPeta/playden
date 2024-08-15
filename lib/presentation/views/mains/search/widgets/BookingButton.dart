import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/presentation/views/others/bookingreview/bookingreview.dart';




class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PlayButton(
      label: 'Book Now',
      onTap: () {
        Get.to(const BookingReview());
      },
      height: 42,
      width: 126,
      color: const Color(0xFF8F55A2),
      borderRadius: 12.0,
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

