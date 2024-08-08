import 'package:flutter/material.dart';

class TTextField{
  static InputDecorationTheme TextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: const Color(0xFF95AFCB),
    suffixIconColor: const Color(0xFF95AFCB),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 1, color: Color(0xFFF6F7F9),
        style: BorderStyle.solid,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 1, color: Color(0xFFF6F7F9),
        style: BorderStyle.solid,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 1, color: Color(0xFF41244B), style: BorderStyle.solid,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 1, color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 1, color: Colors.yellow,
      ),
    ),
  );
}