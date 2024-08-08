import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MakePaymentButton extends StatelessWidget {
  const MakePaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8F55A2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: const Size(160, 42),
      ),
      onPressed: (){},
      child:Text('Make Payment', style: GoogleFonts.poppins(
        fontWeight: FontWeight.w200,
        fontSize: 14,
        color: const Color(0xFFFFFFFF),
      ),),
    );
  }
}