import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playSpacing.dart';


class IconText extends StatelessWidget {
  const IconText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 42,
      child: Center(
        child: GestureDetector(
          onTap: (){

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Coin.png', height: 32, width: 32,),
              Text('0', style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}