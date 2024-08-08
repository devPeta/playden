import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class myBoxVerification extends StatelessWidget {
  const myBoxVerification({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 64,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFF8F55A2),
            style: BorderStyle.solid,
            width: 3,
          )
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 23,
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
            ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
