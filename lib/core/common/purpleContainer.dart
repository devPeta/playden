import 'package:flutter/material.dart';
class PurpleContainer extends StatelessWidget {
  final Widget child;
  const PurpleContainer({Key? key,
    required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: double.infinity,
      height: 230,
      decoration: const BoxDecoration(
        color: Color(0xFF41244B),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        )
      ),
      child: child,
    );
  }
}
