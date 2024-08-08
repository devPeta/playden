import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportProduct extends StatelessWidget {
  final String sportImgPaths;
  final String sportTitleText;
  final VoidCallback onPressed;
  const SportProduct({
    super.key,
    required this.sportImgPaths,
    required this.sportTitleText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(sportImgPaths),
              fit: BoxFit.fill,
            )
        ),
        child: Center(
          child: TextButton(
            onPressed: onPressed,
            child: Text(sportTitleText, style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                )
            ),),
          ),
        ),
      ),
    );
  }
}