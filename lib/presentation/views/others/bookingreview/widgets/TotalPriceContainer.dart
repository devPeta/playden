import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF929292).withOpacity(0.4),
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total', style: GoogleFonts.inter(
              fontSize: 20,
              color: const Color(0xFF8F55A2),
              fontWeight: FontWeight.w400,
            ),),
            Text('₦10,000/hr', style: GoogleFonts.inter(
              fontSize: 20,
              color: const Color(0xFF8F55A2),
              fontWeight: FontWeight.w400,
            ),
            ),
          ],
        ),
      ),
    );
  }
}