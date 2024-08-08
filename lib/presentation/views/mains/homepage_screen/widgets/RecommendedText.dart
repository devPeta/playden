import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecommendedText extends StatelessWidget {
  const RecommendedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Recommended for You', style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        )
    ),
    );
  }
}