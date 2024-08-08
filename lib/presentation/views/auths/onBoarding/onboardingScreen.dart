import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/core/constant/playTextString.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/auths/onBoarding/boardingController.dart';
import 'package:playden/presentation/views/auths/onBoarding/preLogin.dart';
import 'package:playden/presentation/views/auths/onBoarding/widgets/onboardingPageView.dart';
import 'package:playden/presentation/views/auths/onBoarding/widgets/onboardingsmoothdot.dart';


class onboardingScreen extends StatelessWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BoardingController());
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
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

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const preLogin());
                  },
                  child: Text('Login', style: payTextStyles.playElevatedButtonText,),
                ),
              ),
            ]
          )
        )
      ),
    );
  }
}

