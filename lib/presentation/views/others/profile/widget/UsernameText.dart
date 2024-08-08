import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserrnameText extends StatelessWidget {
  const UserrnameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Big Zak',style: GoogleFonts.inter(
            color: const Color(0xFF010C15),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          ),
          const SizedBox(height: 2,),
          Text('+2347066048648', style: GoogleFonts.inter(
            color: const Color(0xFF6C6C6C),
            fontSize: 14,
            fontWeight: FontWeight.w200,
          ),),
        ],
      ),
    );
  }
}