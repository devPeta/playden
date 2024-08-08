import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class FavouriteRating extends StatelessWidget {
  const FavouriteRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 19,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(48),
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 1,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text('4.5', style: GoogleFonts.inter(
              fontWeight: FontWeight.w200,
              fontSize: 10,
              color: const Color(0xFF010C15),
            ),
            ),
            const Icon(Icons.star, size: 12, color: Color(0xff141B34),),
          ],
        ),
      ),
    );
  }
}