import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/search/widgets/BookingButton.dart';
import 'package:playden/presentation/views/mains/search/widgets/NumberAndCallIcon.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchAddressLine.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchFieldName.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchNairaPerHour.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchRatingIcon.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchThumbNails.dart';





class SearchCardContent extends StatelessWidget {
  const SearchCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 285,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///Stack Icon
            SearchThumbNails(),

            ///Row
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///SpaceBetweenFieldAndRating
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Search Field Name
                      SearchFieldName(),

                      ///Rating Icon And Figure
                      SearchRatingIcon()
                    ],
                  ),
                  SizedBox(height: 2,),

                  ///SpaceBetweenAddressAndPricePerHour
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Location And Address Icon
                      SearchAddressLine(),


                      ///Clock Icon And Text For Cost Per Hours
                      SearchNairaPerHour(),
                    ],
                  ),
                  SizedBox(height: 2,),

                  ///Number And Call Icon
                  NumberAndCallIcon(),
                  SizedBox(height: 2,),

                  ///End Axis Button
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ///BookingButton
                      BookingButton()
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}