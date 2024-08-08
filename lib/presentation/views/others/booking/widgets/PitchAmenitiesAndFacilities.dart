import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchAmenitiesContainer.dart';



class AmenitiesAndFacilities extends StatelessWidget {
  const AmenitiesAndFacilities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF929292).withOpacity(0.2),
            width: 1,
            style: BorderStyle.solid,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Amenities', style: GoogleFonts.inter(
              fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF333333),
            ),
            ),

            const SizedBox(height: 4,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                AmenititesContainer(text: 'Changing room',),
                SizedBox(width: 4),
                AmenititesContainer(text: 'Capacity(14)',),
                SizedBox(width: 4),
                AmenititesContainer(text: 'Sitting',),

              ],
            )
          ],
        ),
      ),
    );
  }
}
