import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ReviewTitle extends StatelessWidget {
  const ReviewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('In-App Reviews ',
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Color(0xFF333333),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          )
      ),
    );
  }
}