import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class verifyDetails extends StatelessWidget {
  final String startText;
  final String endText;
  const verifyDetails({
    super.key,
    required this.startText,
    required this.endText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(startText, style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
          ),
          Text(endText, style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
          ),
        ],
      ),
    );
  }
}
