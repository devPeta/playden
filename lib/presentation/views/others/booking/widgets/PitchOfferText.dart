import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class PitchOfferText extends StatelessWidget {
  const PitchOfferText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Offers', style: GoogleFonts.inter(
      color: const Color(0xFF333333),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    );
  }
}