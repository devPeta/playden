import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BookingContainer extends StatelessWidget {
  const BookingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(
              color: const Color(0xFF000000),
              width: 1,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6),
          child: Text('10,000/hr', style: GoogleFonts.poppins(
            color: const Color(0xFF41244B),
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
          ),
        ),
      ),
    );
  }
}