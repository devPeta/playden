import 'package:flutter/material.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class CustomDialog extends StatelessWidget {
  final String subTitle;
  final Image imgPaths;
  final String onElevatedButtonText;
  final VoidCallback onElevatedButtonPressed;


  const CustomDialog({
    Key? key,
    required this.subTitle,
    required this.imgPaths,
    required this.onElevatedButtonPressed,
    required this.onElevatedButtonText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.white,
      elevation: 1,
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(imgPaths!= null)imgPaths!,
              const SizedBox(height: 4,),
              Text(subTitle,  style: const TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontSize: 10,
              ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:  onElevatedButtonPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8F55A2),
                      minimumSize: const Size(double.infinity, 44),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    child: Text(onElevatedButtonText, style: payTextStyles.playElevatedButtonText)
                ),
              ),
              const SizedBox(height: 2,),
            ],
          ),
        ),
      ),

    );
  }
}