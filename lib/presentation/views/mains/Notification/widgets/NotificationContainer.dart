import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationContainer extends StatelessWidget {
  final String descTitle;
  const NotificationContainer({
    super.key,
    required this.descTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAEA),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16, bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(descTitle, style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                )
            ),
              softWrap: true,
            ),

           TextButton(onPressed: (){},
               child:  Text('X', style: GoogleFonts.inter(
                 color: const Color(0xFF010C15),
                 fontSize: 12,
               ),
               )),
          ],
        ),
      ),
    );
  }
}
