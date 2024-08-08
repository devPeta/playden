import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PitchLocationAndAddress extends StatelessWidget {
  const PitchLocationAndAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF929292).withOpacity(0.2),
            width: 1,
            style: BorderStyle.solid,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Location', style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF01031A),
            ),
            ),
            const SizedBox(height: 4,),
            Row(
              children: [
                Image.asset('assets/icons/location.png', height: 10,),
                const SizedBox(height: 4,),
                Text('45A, Unguwan, Rimi Road, City Centre, Kaduna',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: const Color(0xFF828282),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}