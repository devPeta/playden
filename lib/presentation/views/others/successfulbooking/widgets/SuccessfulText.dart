import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SuccessfulText extends StatelessWidget {
  const SuccessfulText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Booking Successful!',  style:GoogleFonts.inter(
        color: const Color(0xFF01031A),
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      ),
    );
  }
}