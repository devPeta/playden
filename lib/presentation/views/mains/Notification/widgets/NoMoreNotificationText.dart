import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class NoMoreNotificationText extends StatelessWidget {
  const NoMoreNotificationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No More Notifications', style: GoogleFonts.poppins(
        color: const Color(0xFF3D3D3D),
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),),
    );
  }
}