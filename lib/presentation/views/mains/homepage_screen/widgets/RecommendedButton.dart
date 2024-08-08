import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(120, 28), // Set the width and height
            backgroundColor: const Color(0xFF41244B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        onPressed: (){
          Get.to(const ScheduleBooking());
        },
        child: Text('Book Now', style: GoogleFonts.poppins(
          fontSize: 10,
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w700,
        ),
        ),
        ),



        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(120, 28), // Set the width and height
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