import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GroupContainer extends StatelessWidget {
  const GroupContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFF929292),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 12, color: const Color(0xFF000000).withOpacity(0.8),),
            const SizedBox(width: 4,),
            Text('Add Group', style: GoogleFonts.poppins(
              fontWeight: FontWeight.w200,
              fontSize: 14,
              color: const Color(0xFF010C15),
            ),)
          ],
        ),
      ),
    );
  }
}