import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecommendedAddress extends StatelessWidget {
  final String recommendedAddress;
  const RecommendedAddress({
    super.key,
    required this.recommendedAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/icons/location.png', height: 10,),
        const SizedBox(width: 4,),
        Text(recommendedAddress, style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF010C15),
              fontWeight: FontWeight.w300,
              fontSize: 10,
            )
        ),),
      ],
    );
  }
}