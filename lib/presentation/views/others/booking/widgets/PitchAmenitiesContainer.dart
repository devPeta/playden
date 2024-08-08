import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmenititesContainer extends StatelessWidget {
  final String text;
  const AmenititesContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xFF8F55A2),
            width: 1,
            style: BorderStyle.solid,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: const Color(0xFF41244B),
        ),),
      ),
    );
  }
}