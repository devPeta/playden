import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickASportText extends StatelessWidget {
  const PickASportText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Pick a sport', style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        )
    ),
    );
  }
}