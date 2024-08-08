import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playTextString.dart';
import 'package:playden/presentation/views/others/booking/widgets/ReviewTagContainer.dart';


class DummyDataDateAndTimeTags extends StatelessWidget {
  const DummyDataDateAndTimeTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ///Dummy Text
        Text(playTextStrings.dummyText, style: GoogleFonts.inter(
          color: const Color(0xFF454545),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),),

        const SizedBox(height: 8,),

        ///Name And Date
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Name
            Text('Firstname Lastname', style: GoogleFonts.inter(
              color: const Color(0xFF727272),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),),
            const SizedBox(width: 8,),

            ///Date
            Text('20 Aug, 2021', style: GoogleFonts.inter(
              color: const Color(0xFF727272),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),),
          ],
        ),
        const SizedBox(height: 8,),

        ///Row Tags SpaceBetween
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TagContainer(),
            SizedBox(width: 4,),
            TagContainer(),
            SizedBox(width: 4,),
            TagContainer(),
          ],
        ),
      ],
    );
  }
}