import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenHoursText extends StatelessWidget {
  const OpenHoursText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Text('Open hours: 7:00 AM- 9:00 AM', style: GoogleFonts.inter(
        color:  const Color(0xFFBDBDBD),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      ),
    );
  }
}