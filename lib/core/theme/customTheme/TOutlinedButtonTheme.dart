import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TOutlinedButtonTheme{
  static final OutlinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFFFFFFFF),
      side: const BorderSide(color: Color(0xFF41244B), width: 2,),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
      textStyle: GoogleFonts.raleway(
          textStyle: const TextStyle(
            color: Color(0xFF41244B),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          )
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: const Color(0xFF41244B).withOpacity(0.4),
    ),
  );
}