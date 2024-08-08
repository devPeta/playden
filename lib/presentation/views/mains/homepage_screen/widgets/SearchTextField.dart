import 'package:flutter/material.dart';
import 'package:playden/core/constant/playTextStyles.dart';
class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: payTextStyles.playBodyTextFieldFilledWhite,
      decoration: InputDecoration(
        hintText: 'Search ',
        hintStyle: payTextStyles.playBodyTextFieldFilledWhite,
        suffixIcon: const Icon(Icons.search, color: Color(0xFFFFFFFF), size: 24,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(width: 1, color: Color(0xFFF6F7F9),
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.white24, style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}