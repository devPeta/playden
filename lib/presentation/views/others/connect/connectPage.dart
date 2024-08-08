import 'package:flutter/material.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/others/connect/widgets/ConnectText.dart';
import 'package:playden/presentation/views/others/connect/widgets/FindYourPeopleText.dart';
import 'package:playden/presentation/views/others/connect/widgets/PickASportText.dart';
import 'package:playden/presentation/views/others/connect/widgets/SearchTextField.dart';
import 'package:playden/presentation/views/others/connect/widgets/SportProductGridView.dart';
class connectPage extends StatelessWidget {
  const connectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: playSpacing.paddingWithAppBarHeightSm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ///Connect Header Text
            const connectText(),
            SizedBox(height: screenHeight * 0.01,),

            ///SearchTextField
            const searchTextField(),
            SizedBox(height: screenHeight * 0.02,),


            ///Find Your People Text
            const FindYourPeopleText(),
            SizedBox(height: screenHeight * 0.001,),

            const PickASportTextConnectGroup(),
            SizedBox(height: screenHeight * 0.01,),

            ///Grid View
            const SportProductGridView(),

          ],
        ),
        ),
      ),
    );
  }
}












