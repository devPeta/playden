import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FavouriteIconAddress extends StatelessWidget {
  const FavouriteIconAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/icons/location.png', height: 12,),
        Text('45A, Ungwan Rimi, City Centre', style: GoogleFonts.inter(
          fontWeight: FontWeight.w200,
          fontSize: 12,
          color: const Color(0xff010C15),
        ),
        ),
      ],
    );
  }
}