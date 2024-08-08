import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playTextStyles.dart';


class BookingFieldNameAndRating extends StatelessWidget {
  const BookingFieldNameAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Ploutos Football Field', style: payTextStyles.playSmNormalText,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.star_rate, color: Colors.yellow, size: 12,),
              Text('4.5', style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF6C6C6C),
              ),
              ),
              Text('(729)', style: GoogleFonts.inter(
                fontSize: 8,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF828282),
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}