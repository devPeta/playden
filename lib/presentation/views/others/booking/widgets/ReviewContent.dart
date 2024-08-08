import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/booking/widgets/ReviewDummyDataDateAndTimeTag.dart';
import 'package:playden/presentation/views/others/booking/widgets/ReviewRatingContainer.dart';
import 'package:playden/presentation/views/others/booking/widgets/ReviewTitle.dart';
class ReviewContent extends StatelessWidget {
  const ReviewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///Title
          ReviewTitle(),
          SizedBox(height: 6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///RatingContainerReview
              ReviewRatingContainer(),
              SizedBox(width : 8,),

              ///Column Container _ Dummy Data, Date And Time And Container Tags
              DummyDataDateAndTimeTags(),
            ],
          ),
        ],
      ),
    );
  }
}
