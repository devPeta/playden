import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/presentation/views/mains/homepage_screen/widgets/SmoothDotHomePage.dart';



class BoxPageViewContent extends StatelessWidget {
  final String title;
  final String subTitle;

  const BoxPageViewContent({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 17, bottom: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
          ),),
          const SizedBox(height: 2,),
          Text(subTitle,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                )
            ),
          ),
          const SizedBox(height: 8,),

          const Center(child: SmoothDotHomePage()),
        ],
      ),
    );
  }
}