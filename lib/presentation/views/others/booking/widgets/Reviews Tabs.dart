import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/booking/widgets/ReviewContent.dart';
class ReviewsTabs extends StatelessWidget {
  const ReviewsTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
        shrinkWrap: true,
        itemBuilder:  (context, index) => const ReviewContent(),
        scrollDirection: Axis.vertical,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 8);
      },
    );
  }
}









