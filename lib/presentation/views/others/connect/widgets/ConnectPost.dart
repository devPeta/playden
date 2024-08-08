import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playTextString.dart';


class ConnectPost extends StatelessWidget {
  const ConnectPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 361,
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
                        child: CircleAvatar(backgroundColor: Colors.red, )
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
                  mainAxisAlignment: MainAxisAlignment.sta,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8F55A2),
                        minimumSize: const Size(126, 42),
                      ),
                      child: Text('Join Group', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),),
                    ),

                    const SizedBox(width: 4,),
                    const Icon(Icons.more_vert_outlined, size: 24, color: Color(0xFF141B34),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8,),


            ///UserImage Post
            Image.asset('assets/images/Full shot people playing soccer.png', height: 297, width: 332,),
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
    );
  }
}