import 'package:flutter/material.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class QtCustomDialog extends StatelessWidget {
  final String? title;
  final String subTitle;
  final Image? imgPaths;
  final String? onElevatedButtonText;
  final String? onOutlinedButtonText;
  final VoidCallback? onElevatedButtonPressed;
  final VoidCallback? onOutlinedButtonPressed;

  const QtCustomDialog({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imgPaths,
    this.onElevatedButtonPressed,
    this.onOutlinedButtonPressed,
    this.onElevatedButtonText,
    this.onOutlinedButtonText,
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
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(imgPaths!= null)imgPaths!,
              Text(title!, style: const TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2,),
              Text(subTitle,  style: const TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w500,
                fontSize: 14,
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    child: Text(onElevatedButtonText!, style: payTextStyles.playElevatedButtonText)
                ),
              ),
              const SizedBox(height: 2,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: onOutlinedButtonPressed,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Color(0xFF1477E0),
                          style: BorderStyle.solid,
                          width: 2,
                        )
                    ),
                  ),
                  child: Text(onOutlinedButtonText!, style: payTextStyles.playOutlinedButtonText),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}