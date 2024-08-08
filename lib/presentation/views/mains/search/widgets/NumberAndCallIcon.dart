import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';










class NumberAndCallIcon extends StatelessWidget {
  const NumberAndCallIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.call_outlined, color: Color(0xFF01031A), size: 14,),
        const SizedBox(width: 2,),
        Text('+234 905 787 8194', style: GoogleFonts.inter(
          color: const Color(0xFF01031A),
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
        ),
      ],
    );
  }
}