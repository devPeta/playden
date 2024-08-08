import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FavouriteStackImage extends StatelessWidget {
  const FavouriteStackImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/images/bookingfoot.png'),
            fit: BoxFit.fill,
          )
      ),
      child: Stack(
        children: [
          Positioned(
              left:8,
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.timer, color: Colors.black, size: 12,),
                        Text('Up to 10% off', style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ),

          Positioned(
              right: 8,
              top: 10,
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite, color: Color(0xFFD9D9D9), size: 24, ),
                        ],
                      )))
          ),
        ],
      ),
    );
  }
}