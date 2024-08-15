import 'package:flutter/material.dart';
import 'package:playden/core/common/button/playButton.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class PitchBookButton extends StatelessWidget {
  const PitchBookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,
      child: PlayButton(
        label: 'Book Now',
        onTap: () {
        },
        height: 42,
        width: double.infinity,
        color: const Color(0xFF8F55A2),
        borderRadius: 12.0,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

