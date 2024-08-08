import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/presentation/views/others/bookingreview/bookingreview.dart';




class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8F55A2),
        minimumSize: const Size(126, 42), // Set the width and height
      ),
      onPressed: (){
        Get.to(const BookingReview());
      },
      child: Text('Book Now', style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
      ),
    );
  }
}