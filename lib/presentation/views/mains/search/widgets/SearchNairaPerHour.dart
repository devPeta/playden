import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/common/purpleContainer.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/SearchTextField.dart';
import 'package:playden/presentation/views/others/bookingreview/bookingreview.dart';



class SearchNairaPerHour extends StatelessWidget {
  const SearchNairaPerHour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.access_time_rounded, color: Color(0xFF141B34), size: 10,),
        const SizedBox(width: 2,),
        Text('₦1000/hour', style: GoogleFonts.inter(
          color: const Color(0xFF010C15),
          fontWeight: FontWeight.w300,
          fontSize: 12,
        ),)
      ],
    );
  }
}