import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playSpacing.dart';



class GroupText extends StatelessWidget {
  const GroupText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('My Group', style: GoogleFonts.inter(
      color: const Color(0xFF010C15),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    );
  }
}