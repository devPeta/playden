import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedAddress.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedButton.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedFieldTitle.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedStackThumbNails.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedTypeSport.dart';



class HomePageRecommendedContainer extends StatelessWidget {
  const HomePageRecommendedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 192,
        width: 266,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ///ThumpNails, And Rating
            RecommendedStackThumbNails(),

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

                  RecommendedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






















