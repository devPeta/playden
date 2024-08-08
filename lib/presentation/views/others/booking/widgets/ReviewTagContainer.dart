import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TagContainer extends StatelessWidget {
  const TagContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: 48,
        height: 24,
        decoration: const BoxDecoration(
          color: Color(0xFF8F55A2),
        ),
        child: Center(
          child: Text('TAG', style: GoogleFonts.inter(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),),
        ),
      ),
    );
  }
}
