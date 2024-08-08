import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetailsText extends StatelessWidget {
  const BookingDetailsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Booking Details',style:GoogleFonts.inter(
      color: const Color(0xFF01031A),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    );
  }
}