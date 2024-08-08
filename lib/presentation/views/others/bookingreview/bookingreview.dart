import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/ImageFieldNameAndContainer.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/MakePaymentButton.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/PlayPointButton.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/SportDetailsContainer.dart';
import 'package:playden/presentation/views/others/bookingreview/widgets/TotalPriceContainer.dart';
class BookingReview extends StatelessWidget {
  const BookingReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Booking Review', style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: const Color(0xff010C15),
        ),
        ),
        centerTitle: false,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ///Image And FieldName + Location
              SizedBox(height:  screenHeight * 0.01,),
              const ImageFieldNameAndFieldLocation(),
              SizedBox(height:  screenHeight * 0.01,),

              ///Sport Details
              const SportDetailsContainer(),
              SizedBox(height:  screenHeight * 0.01,),

              ///Total Price
              const TotalPriceContainer(),


            ],
          ),),
      ),

      ///BottomButtonSpaceBetween
      bottomSheet: const Padding(padding: EdgeInsets.all(16),
        child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///PlayPointButton
                      PlayPointButton(),

                      ///MakePaymentButton
                      MakePaymentButton(),
                    ],
              ),
        ),
    );
  }
}










