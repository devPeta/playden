
import 'package:flutter/material.dart';
import 'package:playden/core/constant/playTextStyles.dart';

class searchTextField extends StatelessWidget {
  const searchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: payTextStyles.playBodyTextFieldFilled,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: payTextStyles.playHintTextField,
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}