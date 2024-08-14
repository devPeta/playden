import 'package:flutter/material.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playColors.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedAddress.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedButton.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedFieldTitle.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedStackThumbNails.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedTypeSport.dart';
import 'package:playden/core/common/button/playButton.dart';


class HomePageRecommendedContainer extends StatelessWidget {
  const HomePageRecommendedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 4,
      child: Container(
        height: 175,
        width: 266,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // #00000008 equivalent in opacity
              offset: Offset(0, 4), // Shadow offset (0px 4px)
              blurRadius: 4, // Blur radius (4px)
              spreadRadius: 0, // Spread radius (0px)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ///ThumpNails, And Rating
            // RecommendedStackThumbNails(),
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)), // Match container's border radius
              child: RecommendedStackThumbNails(),
            ),

            SizedBox(height: 4,),

            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 4, ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///CircularContainer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RecommendedTypeSport(recommmendedSportName: 'Football',),
                          SizedBox(width: 2,),
                          RecommendedTypeSport(recommmendedSportName: 'Basketball',),
                        ],
                      ),
                      Icon(Icons.favorite_border_rounded, size: 24, color: Color(0xFF41244B),)
                    ],
                  ),

                  ///RecommendedFieldTitle
                  RecommendedFieldTitle(recommendedFieldTitle: 'Ploutus Field',),
                  SizedBox(height: 2,),

                  ///RecommendedAddress + Icon
                  RecommendedAddress(recommendedAddress: 'Tafawa Balewa Rd (5km)',),

                  SizedBox(height: 8,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PlayButton(
                        label:'Book Now',
                        onTap: () {
                        },
                        height: 38.0,
                        width: 120,
                        color: playColors.primary,
                        borderRadius: 6.0,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      PlayButton(
                        label:'View Details',
                        onTap: () {
                        },
                        height: 38.0,
                        width: 120,
                        color: playColors.white,
                        borderRadius: 6.0,
                        textStyle: const TextStyle(
                          color: playColors.primary,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        border: Border.all(
                            color: playColors.primary,
                            width: 1
                        ),
                          shadowOpacity: 0
                      ),
                    ],
                  )

                  // RecommendedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






















