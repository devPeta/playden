import 'package:flutter/material.dart';
import 'customTheme/TButtonSheet.dart';
import 'customTheme/TElevatedButtonTheme.dart';
import 'customTheme/TOutlinedButtonTheme.dart';
import 'customTheme/TTextFieldTheme.dart';



class TTheme{
  TTheme._();
  static ThemeData playAppTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFE8E8E8),
    inputDecorationTheme: TTextField.TextFieldTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.OutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButton.ElevatedButtonTheme,
    bottomSheetTheme: TBottomSheet.BottomSheetTheme,
  );
}