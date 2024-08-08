import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickASportTextConnectGroup extends StatelessWidget {
  const PickASportTextConnectGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Pick a sport and find the group chat for you ', style: GoogleFonts.inter(
        textStyle: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 12,
            fontWeight: FontWeight.w200
        )
    ),
    );
  }
}