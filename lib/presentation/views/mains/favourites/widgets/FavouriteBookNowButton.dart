import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/presentation/views/others/successfulbooking/successfulbooking.dart';

class FavouriteBookNowButton extends StatelessWidget {
  const FavouriteBookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PlayButton(
            label: 'Book Now',
            onTap: () {
              Get.to(const SuccessfulBooking());
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
          ),
        ],
      ),
    );
  }
}