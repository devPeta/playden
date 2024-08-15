import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playColors.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/core/constant/playTextString.dart';
import 'package:playden/presentation/views/auths/onBoarding/boardingController.dart';
import 'package:playden/presentation/views/auths/onBoarding/widgets/onboardingPageView.dart';
import 'package:playden/presentation/views/auths/onBoarding/widgets/onboardingsmoothdot.dart';


class onboardingScreen extends StatelessWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BoardingController());
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:  const EdgeInsets.only(left: 16, right: 16),
          child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
            children:[

              SizedBox(height: screenHeight * 0.01,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:    [
                 onboardingSmoothDot(),
                ],
              ),

              SizedBox(
                height: screenHeight * 0.8,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.updatePageIndicator,
                  children: const [
                    onboardingPageView(title: playTextStrings.boardingTitle,
                      imgPaths: playImages.obImg,
                      subtitle: playTextStrings.boardingSubTitle,),
                    onboardingPageView(title: playTextStrings.boardingTitle2,
                      imgPaths: playImages.obImg2,
                      subtitle: playTextStrings.boardingSubTitle,),
                    onboardingPageView(title: playTextStrings.boardingTitle3,
                      imgPaths: playImages.obImg3,
                      subtitle: playTextStrings.boardingSubTitle,),
                  ],
                ),
              ),


              SizedBox(
                height: screenHeight * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PlayButton(
                    label: controller.buttonText.value,
                    onTap: () {
                      controller.nextPage();
                    },
                    height: 45,
                    width: 171,
                    color: playColors.primary,
                    borderRadius: 12.0,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ]
          )
        )
      ),
    );
  }
}