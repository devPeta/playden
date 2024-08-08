import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetails extends StatelessWidget {
  final String startText;
  final String endText;

  const BookingDetails({
    super.key,
    required this.startText,
    required this.endText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(startText, style: GoogleFonts.inter(
            color: const Color(0xFF000000),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          ),
          Text(endText, style: GoogleFonts.inter(
            color: const Color(0xFF000000),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}