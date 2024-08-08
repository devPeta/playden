import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playden/core/constant/playTextStyles.dart';
import 'package:playden/presentation/views/others/booking/congrats_screen.dart';


class DownloadButton extends StatelessWidget {
  const DownloadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8F55A2),
        ),
        onPressed: (){
          Get.to(const CongratsScreen());
        },
        child: Text('Download', style: payTextStyles.playElevatedButtonText,),
      ),
    );
  }
}