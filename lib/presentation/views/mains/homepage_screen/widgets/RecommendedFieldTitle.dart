import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedFieldTitle extends StatelessWidget {
  final String recommendedFieldTitle;
  const RecommendedFieldTitle({
    super.key, required this.recommendedFieldTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(recommendedFieldTitle, style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color(0xFF010C15),
          fontWeight: FontWeight.w600,
          fontSize: 12,
        )
    ),);
  }
}