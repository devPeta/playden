import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchFacilitiesTile.dart';

class PitchFacilitiesAndTile extends StatelessWidget {
  const PitchFacilitiesAndTile({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
            child: Text('Facilities', style: GoogleFonts.inter(
              color: const Color(0xFF333333),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          const SizedBox(height: 4,),

          ///Facilities Tile
          const FacilitiesTile(text: 'Gym', imagePaths: playImages.gym,),
          const FacilitiesTile(text: 'Ice Cream Shop', imagePaths: playImages.ice,),
          const FacilitiesTile(text: 'Wifi', imagePaths: playImages.wifi,),
          const FacilitiesTile(text: 'Spa', imagePaths: playImages.spa,),
          const FacilitiesTile(text: 'Restaurant', imagePaths: playImages.pizza,),

          const SizedBox(height: 2),
        ],
      ),
    );
  }
}

