import 'package:flutter/material.dart';
import 'package:playden/data/models/bookingscreen/aboutPitch.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchAmenitiesAndFacilities.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchBookButton.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchFacilitiesAndTile.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchLocationAndAddress.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchOfferImageTile.dart';
import 'package:playden/presentation/views/others/booking/widgets/PitchOfferText.dart';
class AboutPitchTabs extends StatefulWidget {
  const AboutPitchTabs({Key? key}) : super(key: key);

  @override
  State<AboutPitchTabs> createState() => _AboutPitchTabsState();
}

class _AboutPitchTabsState extends State<AboutPitchTabs> {


  final List ImageOfferTileMenu = const [
    OfferImagesModel(imgPaths: 'assets/images/aboutReview1.png'),
    OfferImagesModel(imgPaths: 'assets/images/aboutReview1.png'),
    OfferImagesModel(imgPaths: 'assets/images/aboutReview1.png'),
  ];


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///Location And Address
          const PitchLocationAndAddress(),
          SizedBox(height: screenHeight * 0.01,),

          ///Amenities And Facilities
          const AmenitiesAndFacilities(),
          SizedBox(height: screenHeight * 0.01,),

          ///Facilities
          const PitchFacilitiesAndTile(),
          SizedBox(height: screenHeight * 0.01,),


          ///Button Book Now
          const PitchBookButton(),
          SizedBox(height: screenHeight * 0.01,),

          ///Offers Text
          const PitchOfferText(),
          SizedBox(height: screenHeight * 0.01,),

          ///ImageRow Horizontal
          SizedBox(
            width: double.infinity,
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: ImageOfferTileMenu.length,
              itemBuilder: (context, index) => offerImageTile(
                offerImagesModel: ImageOfferTileMenu[index],
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}














