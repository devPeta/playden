import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class FavouriteFieldName extends StatelessWidget {
  const FavouriteFieldName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Ploutus Field', style: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: const Color(0xff010C15),
    ),
    );
  }
}