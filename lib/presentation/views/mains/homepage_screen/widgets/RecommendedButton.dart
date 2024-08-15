import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/presentation/views/others/booking/bookingscreen.dart';
import 'package:playden/presentation/views/others/schedulebooking/schedulebooking.dart';


class RecommendedButton extends StatelessWidget {
  const RecommendedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PlayButton(
          label: 'Book Now',
          onTap: () {
            Get.to(const ScheduleBooking());
          },
          height: 42,
          width: 126,
          color: const Color(0xFF8F55A2),
          borderRadius: 12.0,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),


        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(121, 24), // Set the width and height
            backgroundColor: const Color(0xFFffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),

          ),
        onPressed: (){
            Get.to(const BookingScreen());
        },
        child: Text('View Details', style: GoogleFonts.poppins(
          fontSize: 10,
          color: const Color(0xFF010C15),
          fontWeight: FontWeight.w700,
        ),
        ),
                ),
      ],
    );
  }
}