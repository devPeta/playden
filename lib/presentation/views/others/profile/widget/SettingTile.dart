import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playden/core/constant/playSpacing.dart';



class SettingTile extends StatefulWidget {
  final String text;
  final IconData icon;
  const SettingTile({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  State<SettingTile> createState() => _SettingTileState();
}

class _SettingTileState extends State<SettingTile> {

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 8,),
        Icon(widget.icon, color:const Color(0xFF41244B), size: 24,),
        const SizedBox(width: 12,),
        Center(
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Removes all padding
              minimumSize: const Size(0, 0),  // Ensures no minimum size is enforced
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrinks the tap target size to the content size
            ),
            child: Text(widget.text, style: GoogleFonts.poppins(
                color: const Color(0xFF000000),
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),),
          ),
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}