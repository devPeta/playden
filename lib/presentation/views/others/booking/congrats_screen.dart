import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/congrats.png'),
                const SizedBox(height: 4,),
                Text('Payment Successful!', style: GoogleFonts.poppins(
                  color: const Color(0xFF000000),
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                ),)
              ],
            ),
          )
      ),
    );
  }
}
