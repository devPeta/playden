import 'package:flutter/material.dart';

class playSnacksBar {
  final String title;
  playSnacksBar(this.title);

  void showSuccess(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        title,
        style: const TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showWarning(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        title,
        style: const TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.redAccent,
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
