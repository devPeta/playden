import 'package:flutter/material.dart';

class DangerousIcon extends StatelessWidget {
  const DangerousIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.dangerous, size: 34, color: const Color(0xFF8F55A2).withOpacity(0.4),
        )
    );
  }
}