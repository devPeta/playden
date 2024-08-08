import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class connectText extends StatelessWidget {
  const connectText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Connect', style: GoogleFonts.poppins(
        textStyle: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 24,
            fontWeight: FontWeight.w800
        )
    ),
    );
  }
}