import 'package:flutter/material.dart';
import 'package:playden/data/models/bookingscreen/aboutPitch.dart';


class offerImageTile extends StatelessWidget {
  final OfferImagesModel offerImagesModel;

  const offerImageTile({Key? key, required this.offerImagesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(offerImagesModel.imgPaths),
          )
      ),
    );
  }
}