import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HaveANiceGameText extends StatelessWidget {
  const HaveANiceGameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Please present QR code to official', style:GoogleFonts.inter(
            color: const Color(0xFF01031A),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          ),
          const SizedBox(height: 2,),
          Text('Have a great game!', style:GoogleFonts.inter(
            color: const Color(0xFF01031A),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          ),
        ],
      ),
    );
  }
}