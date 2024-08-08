import 'package:flutter/material.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class SetUpSuccess extends StatelessWidget {
  const SetUpSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: playSpacing.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.01,),
              Image.asset(playImages.forgetPasswordCongrats),
              SizedBox(height: screenHeight * 0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('You\'ve successfully\ncreated your account', style: payTextStyles.playBodyHeaderMd, softWrap: true,),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
            ],
          ),
        ),
      ),
    );
  }
}
