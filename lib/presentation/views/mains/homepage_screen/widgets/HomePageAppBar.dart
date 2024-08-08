import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';


class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Z Text
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF848484),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text('Z', style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                ),
              ),
            ),
            const SizedBox(width: 1,),

            ///Hi Zak
            Text('Hi Zak', style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            )
          ],
        ),

        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Iconsax.user3, size: 24, color: Colors.white,),
            SizedBox(width: 8,),
            Icon(Icons.notifications_none_outlined, size: 24, color: Colors.white,),
          ],
        ),
      ],
    );
  }
}