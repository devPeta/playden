import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/common/CustomDialog.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playTextString.dart';
import 'package:playden/presentation/views/others/connect/promotionPage.dart';


class ConnectPost extends StatelessWidget {
  const ConnectPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 500,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black54,
              width: 2,
              style: BorderStyle.solid,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ///Circle Avatar, Text, Button And Vertical Mert Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Circle Avatar And Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  SizedBox(
                          height:28,
                          width: 28,
                          child: CircleAvatar(backgroundColor: Colors.red, ),
                      ),
                      const SizedBox(width: 4,),
                      Center(
                        child: Text('BigBoys', style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFF010C15),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                        ),
                      ),
                    ],
                  ),


                  ///Button And Vertical More Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PlayButton(label: 'Join Group',
                          onTap: (){
                            showDialog(context: context,
                                builder: (BuildContext context){
                                  return  CustomDialog(
                                    imgPaths: Image.asset('assets/images/whatsappLogo.png'),
                                    subTitle: 'You are being redirected to Whatsapp to join the \ngroup ‘BigBoys ’. Click continue to proceed.',
                                    onElevatedButtonText: 'Continue to Whatsapp',
                                    onElevatedButtonPressed: (){
                                      Get.to(const PromotionPage());
                                    },
                                  );
                                });
                          },
                        height: 42,
                        width: 126,
                        color: const Color(0xFF8F55A2),
                        borderRadius: 12.0,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4,),
                      const Icon(Icons.more_vert_outlined, size: 24, color: Color(0xFF141B34),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8,),


              ///UserImage Post
              Image.asset('assets/images/Full shot people playing soccer.png',
                height: 297, width: double.infinity,),
              const SizedBox(height: 4,),

              ///User Status
              Text(playTextStrings.loremIpsum,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF010C15),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    )
                ),
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}