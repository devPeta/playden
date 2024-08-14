import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/data/models/homepage/HomePageShortModel.dart';

class HomePageShortTile extends StatelessWidget {
  final HomePageShortModel homePageShortModel;


  const HomePageShortTile({
    super.key,
    required this.homePageShortModel,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(homePageShortModel.imgPaths,),
              fit: BoxFit.cover,
            )
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 5,
                // left: 8,
                child: TextButton(
                  onPressed: (){},
                  child: Text(homePageShortModel.fieldName, style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,

                      ),
                  ),
                   ),
                )
            ),
          ],
        ),
      ),
    );
  }
}