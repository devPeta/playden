import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class payTextStyles{


  ///AppBar Text
  static final TextStyle playAppBarTitle = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontFamily: 'Inter',
      color: Color(0xFF000000),
      fontWeight: FontWeight.w600,
      height: 1.2,
      letterSpacing: 0.1,
    ),
  );
  static final TextStyle playAppBarSubTitle = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontFamily: 'Inter',
      color: Color(0xFF000000),
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),
  );

  ///OnBoarding Constant
  static final TextStyle playOnboardingWhiteTitle = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 30,
      fontFamily: 'Inter',
      letterSpacing: 0.2,
      color: Color(0xFFFFFFFF),
    ),
  );

  static final TextStyle playOnboardingBlackTitle = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontSize: 26,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w700,
      height: 1.8,
      letterSpacing: 0.2,
    ),
  );

  static final TextStyle playOnboardingSubTitle = GoogleFonts.raleway(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0.2,
      color: Color(0xFF000000),
    ),
  );

  ///bodyHeader
  static final TextStyle playBodyHeaderBg = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 30,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w700,
    ),
  );
  static final TextStyle playBodyHeaderMd = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 24,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500,
    ),
  );


  static final TextStyle playForgetPasswordSm = GoogleFonts.workSans(
    textStyle: const TextStyle(
      fontSize: 12,
      color: Color(0xFF41244B),
      fontWeight: FontWeight.w700,
    ),
  );

  ///bodyText
  static final TextStyle playSmNormalText = GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      )
  );
  static final TextStyle playSmNormalTextLight = GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      )
  );

  ///TextField
  static final TextStyle playBodyTextFieldFilled = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      color: Color(0xFF000000),
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
  );

  static final TextStyle playBodyTextFieldFilledWhite = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
  );
  static final TextStyle playHintTextField = GoogleFonts.workSans(
    textStyle: const TextStyle(
        fontSize: 14,
        color: Color(0xFF6C757D),
        fontWeight: FontWeight.w400,
        height: 1.5
    ),
  );


  ///BodyTextField



  ///Buttons
  static final TextStyle playElevatedButtonText = GoogleFonts.raleway(
      textStyle: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 17,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
      )
  );
  static final TextStyle playOutlinedButtonText = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: Color(0xFF41244B),
        fontSize: 17,
        fontWeight: FontWeight.w700
    ),
  );
}