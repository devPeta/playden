import 'package:flutter/material.dart';
import 'package:playden/core/common/purpleContainer.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/SearchTextField.dart';
import 'package:playden/presentation/views/mains/search/widgets/NearYouText.dart';
import 'package:playden/presentation/views/mains/search/widgets/SearchCardContent.dart';
import 'package:playden/presentation/views/mains/search/widgets/SportList.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PurpleContainer(
                child: Padding(
                  padding: playSpacing.paddingWithAppBarHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Search(),
                      SizedBox(height: scrHeight * 0.01,)
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right : 16, top: 8, bottom: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: scrHeight * 0.02,),
                  const NearYouText(),
                  SizedBox(height: scrHeight * 0.01,),

                  ///RowContainer ListView
                  SportList(),

                  SizedBox(height: scrHeight * 0.01,),

                  ///Search Container
                  const SearchCardContent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}















