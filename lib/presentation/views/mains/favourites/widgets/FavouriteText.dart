import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteText extends StatelessWidget {
  const FavouriteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Favourites', style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 24,
          fontWeight: FontWeight.w900,
        )
    ),);
  }
}