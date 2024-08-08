import 'package:flutter/material.dart';
class CircleAvatarProfile extends StatelessWidget {
  const CircleAvatarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFF41244B),
              width: 3,
              style: BorderStyle.solid,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 126,
            width: 131,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image:  DecorationImage(
                  image: AssetImage('assets/images/ProfilePic.jpg',) ,
                )
            ),
          ),
        ),
      ),
    );
  }
}