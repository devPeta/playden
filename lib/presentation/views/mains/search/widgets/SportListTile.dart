import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportListTile extends StatefulWidget {
  final String sportName;
  const SportListTile({
    super.key,
    required this.sportName,
  });

  @override
  State<SportListTile> createState() => _SportListTileState();
}

class _SportListTileState extends State<SportListTile> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color:  const Color(0xFFffffff),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF41244B),
              style: BorderStyle.solid,
              width: 1,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(widget.sportName, style: GoogleFonts.inter(
              color: const Color(0xFF41244B),
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),),
          ),
        ),
      ),
    );
  }
}