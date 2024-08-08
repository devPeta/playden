import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/common/purpleContainer.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/SearchTextField.dart';
import 'package:playden/presentation/views/others/bookingreview/bookingreview.dart';

class SearchAddressLine extends StatelessWidget {
  const SearchAddressLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/icons/location.png', height: 12,),
        const SizedBox(width: 2,),
        Text('45A, Ungwan Rimi, City Centre', style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w200,
          color: const Color(0xFF010C15),
        ),)
      ],
    );
  }
}