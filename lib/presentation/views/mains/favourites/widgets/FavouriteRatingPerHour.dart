import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FavouriteRatingPerHour extends StatelessWidget {
  const FavouriteRatingPerHour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.access_time, size: 16, color: Color(0xFF141B34),),
        const SizedBox(width: 2,),
        Text('₦1000/hour', style: GoogleFonts.inter(
          fontWeight: FontWeight.w200,
          fontSize: 12,
          color: const Color(0xFF010C15),
        ),
        ),
      ],
    );
  }
}