import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/VerifyDetails.dart';

class SportDetailsContainer extends StatelessWidget {
  const SportDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF929292).withOpacity(0.4),
          style: BorderStyle.solid,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            verifyDetails(startText: 'Chosen Sport ', endText: 'Football',),
            verifyDetails(startText: 'Selected Date', endText: '4:00PM-5:00PM ',),
            verifyDetails(startText: 'Selected Time', endText: '4:00PM-5:00PM ',),
            verifyDetails(startText: 'Pitch Size', endText: '5 x 5',),

          ],
        ),
      ),
    );
  }
}
