import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FacilitiesTile extends StatelessWidget {
  final String text;
  final String imagePaths;
  const FacilitiesTile({
    super.key,
    required this.text,
    required this.imagePaths,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0, top: 2.0, left:8, right:8,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: GoogleFonts.inter(
            color: const Color(0xFF6C6C6C),
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),),

          Image.asset(imagePaths, height: 16,),

        ],
      ),
    );
  }
}