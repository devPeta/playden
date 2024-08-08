import 'package:flutter/material.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class PitchBookButton extends StatelessWidget {
  const PitchBookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8F55A2),
        ),
        child: Text('Book Now', style: payTextStyles.playElevatedButtonText,),
      ),
    );
  }
}