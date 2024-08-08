import 'package:flutter/material.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/BookingDetailsText.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/CancelIcon.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/DownloadButton.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/HaveANiceGameText.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/QRScanner.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/SuccesfulBookingDetailsList.dart';
import 'package:playden/presentation/views/others/successfulbooking/widgets/SuccessfulText.dart';
class SuccessfulBooking extends StatelessWidget {
  const SuccessfulBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///Icon Button
                DangerousIcon(),
                SizedBox(height: screenHeight * 0.01,),

                ///SuccessfulBooking Text
                const SuccessfulText(),
                SizedBox(height: screenHeight * 0.01,),

                ///QR Code Image Scanners
                QRScanner(),
                SizedBox(height: screenHeight * 0.04,),

                ///Have A Nice Game Text
                const HaveANiceGameText(),
                SizedBox(height: screenHeight * 0.04,),

                ///Booking Details Text
                const BookingDetailsText(),
                SizedBox(height: screenHeight * 0.01,),


                ///Booking Details Container Tile
                const SuccessfulBookingBookingDetailsList(),
                SizedBox(height: screenHeight * 0.02,),



                ///Download Button
                const DownloadButton(),
              ],
            ),
          )),
    );
  }
}
















