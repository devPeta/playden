import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecommendedStackThumbNails extends StatelessWidget {
  const RecommendedStackThumbNails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: double.infinity,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
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
                  width: 39,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(48),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('4.5', style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFF010C15),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            )
                        ),),
                        const SizedBox(width: 2,),
                        const Icon(Icons.star, color: Color(0xFF010C15), size: 12,)
                      ],
                    ),
                  ),
                )),
          ],
        )
    );
  }
}