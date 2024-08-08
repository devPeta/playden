import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8F55A2),
                minimumSize: const Size(126, 42),
              ),
              onPressed: (){
                Get.to(const SuccessfulBooking());
              },
              child: Text(
                  'Book Now',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFffffff),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
              )
          ),
        ],
      ),
    );
  }
}