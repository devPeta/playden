import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){},
            icon: const Icon(Icons.delete_outline, size: 24, color: Color(0xFF000000),))
      ],
    );
  }
}