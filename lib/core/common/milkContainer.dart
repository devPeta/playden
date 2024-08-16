import 'package:flutter/material.dart';
class MilkContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const MilkContainer({Key? key,
    required this.child,
    required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(0),
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
      ),
      child: child,
    );
  }
}
