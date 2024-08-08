import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playSpacing.dart';
import 'package:playden/presentation/views/others/connect/widgets/ConnectPost.dart';
import 'package:playden/presentation/views/others/connect/widgets/ConnectText.dart';
class connectPostPage extends StatelessWidget {
  const connectPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: playSpacing.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const connectText(),
              const SizedBox(height: 4,),
              ///Connect Football And Icon

              Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                    child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.navigate_before, color: Color(0xFF141B34), size: 12,),
                )
                ),
              ),
                const SizedBox(width: 6,),
                Text('Football',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    )
                ),
            ),
              ],

            ),
              const SizedBox(height: 4,),

              ///Divider
              const Divider( color: Color(0xFF000000),),
              const SizedBox(height: 4,),
              
              ///ConnectPost
              const ConnectPost(),
              ],
            ),
          ),
      ),
    );
  }
}


