import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FindYourPeopleText extends StatelessWidget {
  const FindYourPeopleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Find Your People', style: GoogleFonts.poppins(
        textStyle: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 18,
            fontWeight: FontWeight.w800
        )
    ),
    );
  }
}