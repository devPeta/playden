import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class PlayPointButton extends StatelessWidget {
  const PlayPointButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
          style: BorderStyle.solid,
          color: Color(0xFF8F55A2),
          width: 2,
        ),
        minimumSize: const Size(160, 42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: (){},
      child: Text('Use PlayPoints', style: GoogleFonts.poppins(
        fontWeight: FontWeight.w200,
        fontSize: 14,
        color: const Color(0xFF8F55A2),
      ),),
    );
  }
}