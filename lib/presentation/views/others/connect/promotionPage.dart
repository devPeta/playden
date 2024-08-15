import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playSpacing.dart';
class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///Color Container
            Container(
              color: const Color(0xFFD9D9D9),
              width:double.infinity,
              child:
                Padding(
                padding: playSpacing.paddingWithAppBarHeightSm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.2,),
                      Text('Promotion Code', style: GoogleFonts.montserrat(
                        color: const Color(0xFF141B34),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      SizedBox(height: 4,),
                      Text('Explanation about the promotional code can be \nwritten here',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF929292),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                        softWrap: true,
                      ),
                      SizedBox(height: screenHeight * 0.03,)
                    ],
                  ),
            ),
            ),

            const Padding(
              padding: playSpacing.paddingWithAppBarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  ///Container
                  PromotionalContent(),
                  SizedBox(height: 8),
                  PromotionalContent(),
                  SizedBox(height: 8),
                  PromotionalContent(),
                  SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PromotionalContent extends StatelessWidget {
  const PromotionalContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffE5EBF0),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          style: BorderStyle.solid,
          color: const Color(0xffE5EBF0),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Image, Column Title And Sub Title
                Row(
                  children: [
                    Image.asset('assets/images/Rectangle 1165.png'),
                    const SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Collect unique diamonds', style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: const Color(0xff292D32),

                        ),),
                        const SizedBox(height: 4,),
                        Text('Description of the  about bonus here!',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff292D32),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),

                ///Lock
                const Icon(
                    Icons.lock,
                    size: 18,
                  color: Color(0xff130C56),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),

            ///Divider Loaded
            const Divider(
              color: Color(0xff8925CD),
              thickness: 5,
            ),

            ///Sized
            SizedBox(
              height: 4,
            ),
            ///ROw
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.alarm,  color: Color(0xff8F55A2), size: 18,),
                    SizedBox(width:4),

                    Text('00h:00m:48s',        style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color(0xff8F55A2),
                    ),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.percent_outlined,
                      color: Color(0xff292D32),
                    size: 16,),
                    SizedBox(width:4),
                    Text('99', style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff292D32),
                    ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
