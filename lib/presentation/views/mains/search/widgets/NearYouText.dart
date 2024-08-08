import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class NearYouText extends StatelessWidget {
  const NearYouText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Near You', style: GoogleFonts.poppins(
      color: const Color(0xFF000000),
      fontSize: 18,
      fontWeight: FontWeight.w800,
    ),
    );
  }
}