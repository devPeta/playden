import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playden/core/constant/playImages.dart';
import 'package:playden/presentation/views/others/connect/connectPostPage.dart';
import 'package:playden/presentation/views/others/connect/widgets/SportProduct.dart';

class SportProductGridView extends StatelessWidget {
  const SportProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          crossAxisCount: 2,
          children:    [
            SportProduct(sportImgPaths: playImages.footballShort,
              sportTitleText: 'Football',
              onPressed: () {Get.to(const connectPostPage());},),
            SportProduct(sportImgPaths: playImages.tennisShort, sportTitleText: 'Tennis', onPressed: () {},),
            SportProduct(sportImgPaths: playImages.volleyballShort, sportTitleText: 'Volleyball', onPressed: () {},),
            SportProduct(sportImgPaths: playImages.basketballShort, sportTitleText: 'Basketball', onPressed: () {},),
          ]
      ),
    );
  }
}