import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';



class SearchThumbNails extends StatelessWidget {
  const SearchThumbNails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 155,
        width: double.infinity,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/bookingfoot.png',),
              fit: BoxFit.fill,
            )
        ),
        child: Stack(
          children: [
            Positioned(
                top: 9,
                left: 8,
                child: Container(
                  width: 103,
                  height: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(48),
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.alarm_outlined, color: Color(0xFF141B34), size: 10,),
                        const SizedBox(width: 4,),
                        Text('Up to 10% off', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xFF010C15),
                        ),
                        )
                      ],
                    ),
                  ),
                )),

            Positioned(
                top: 9,
                right: 8,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration:  const BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border, color: Color(0xFFD9D9D9), size: 20,)
                      ],
                    ),
                  ),
                )),
          ],
        )
    );
  }
}