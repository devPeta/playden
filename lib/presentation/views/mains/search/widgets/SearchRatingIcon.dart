import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SearchRatingIcon extends StatelessWidget {
  const SearchRatingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39,
      height: 18,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(48),
          border: Border.all(
            color: const Color(0xFF000000),
          )
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('4.5', style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF010C15),
            ),),
            const SizedBox(width: 2,),
            const  Icon(Icons.star, color: Color(0xFF141B34), size: 12,),
          ],
        ),
      ),
    );
  }
}