import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetails extends StatelessWidget {
  final String title;
  final String subTitle;

  const ProfileDetails({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: GoogleFonts.poppins(
          color: const Color(0xFF010C15),
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),
        ),
        const SizedBox(height: 1,),
        Text(subTitle,style: GoogleFonts.poppins(
          color: const Color(0xFF6C6C6C),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        ),
      ],
    );
  }
}