import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteBookNowButton.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteFieldName.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteIconAddress.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteRating.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteRatingPerHour.dart';
import 'package:playden/presentation/views/mains/favourites/widgets/FavouriteStackImages.dart';


class FavouriteCardContent extends StatelessWidget {
  const FavouriteCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 2,
            child: Container(
              height: 267,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Image And Stack
                  FavouriteStackImage(),

                  SizedBox(height: 6,),
                  ///row Field ANd Rate
                  Padding(
                    padding: EdgeInsets.only(left:8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///FieldName
                        FavouriteFieldName(),


                        ///Container Rating 4.5 + ICon
                        FavouriteRating(),

                      ],
                    ),
                  ),
                  SizedBox(height: 4,),

                  ///Address And Time
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Icon Address
                        FavouriteIconAddress(),

                        ///Clock Icon + Rating Per Hour
                        FavouriteRatingPerHour()

                      ],
                    ),
                  ),
                  SizedBox(height: 4,),

                  ///button Ending
                  FavouriteBookNowButton(),

                ],
              ),
            ),
          ),
        ],
      ),);
  }
}