import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewRatingContainer extends StatelessWidget {
  const ReviewRatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 32,
        height: 15,
        decoration: BoxDecoration(
          color: const Color(0xFF41244B),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('4', style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
              const SizedBox(width: 1,),
              const Icon(Icons.star_rate_rounded, size: 11, color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}