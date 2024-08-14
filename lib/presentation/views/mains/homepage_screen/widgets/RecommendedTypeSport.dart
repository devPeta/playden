import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecommendedTypeSport extends StatelessWidget {
  final String recommmendedSportName;
  const RecommendedTypeSport({
    super.key,
    required this.recommmendedSportName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF929292),
                  style: BorderStyle.solid,
                  width: 2
              ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 6),
            child: Text(recommmendedSportName, style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0xFF929292),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                )
            ),),
          ),
        )
      ],
    );
  }
}