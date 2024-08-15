import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playden/core/common/purpleContainer.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/data/models/homepage/HomePageShortModel.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/HomePageAppBar.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/HomePageController.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/HomePageRecommendedContainer.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/HomePageShortTile.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/PickASportText.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/RecommendedText.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/BoxPageViewContent.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/SearchTextField.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  ///Short Images And Name
  final List homePageShortModelMenu = const [
    HomePageShortModel(imgPaths: playImages.footballField, fieldName: 'Football Field'),
    HomePageShortModel(imgPaths: playImages.basketballCourt, fieldName: 'Basketball Court'),
    HomePageShortModel(imgPaths: playImages.tennisCourt, fieldName: 'Tennis'),
  ];


  ///Recommended Product

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageController());
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.start,
          children: [
            ///Purple Container, AppBar And Search TextField
            Stack(
              clipBehavior:Clip.none,
                children: [
                  SizedBox(
                child: PurpleContainer(
                  height: 230,
                      child:
                          Padding(
                          padding: playSpacing.paddingWithAppBarHeightSm,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ///AppBar
                              const SizedBox(height: 10),
                              const HomePageAppBar(),
                              SizedBox(height: screenHeight * 0.01,),
                              ///Search TextField
                              const Search(),
                              SizedBox(height: screenHeight * 0.01,),
                            ],
                          ),
                        ),
                  ),
              ),

                  /// Box, Details, Discounts, Carousel Scroll
                  Positioned(
                    right: 20,
                    left: 20,
                    bottom: -40,
                    child: SizedBox(
                      height: 120,
                      child: Card(
                        elevation:3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF8F55A2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: PageView(
                            controller: controller.pageController,
                            onPageChanged: controller.updatePageIndicator,
                            children: const [
                              BoxPageViewContent(title: 'Up to 45%', subTitle: 'All Volleyball fields'),
                              BoxPageViewContent(title: 'Up to 30%', subTitle: 'All Football fields'),
                              BoxPageViewContent(title: 'Up to 50%', subTitle: 'All Basketball courts'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01,),
                ],
            ),
            SizedBox(height: screenHeight * 0.08),


            ///White Color Body, Pick A Sport Text, ListView
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///PickASportText
                  const PickASportText(),
                  SizedBox(height: screenHeight * 0.01),

                  ///ShortHomePage Status
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: homePageShortModelMenu.length,
                      itemBuilder: (context, index) => HomePageShortTile(
                        homePageShortModel: homePageShortModelMenu[index],
                      ),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 6);
                      },
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  ///Recommend Text
                  const RecommendedText(),
                  SizedBox(height: screenHeight * 0.02),

                  ///Recommended Container
                  SizedBox(
                    height: 202,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) => const HomePageRecommendedContainer(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),

                  // SizedBox(height: screenHeight * 10.02),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

