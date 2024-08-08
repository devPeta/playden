import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchFieldName extends StatelessWidget {
  const SearchFieldName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Ploutus Field', style: GoogleFonts.poppins(
      fontSize:16,
      fontWeight: FontWeight.w300,
      color: const Color(0xFF010C15),
    ),);
  }
}