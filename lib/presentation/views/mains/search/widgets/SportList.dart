import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/search/widgets/SportListTile.dart';

class SportList extends StatelessWidget {
  SportList({
    super.key,
  });

  final List<String> sportName = [
    'Football',
    'Basketball',
    'Baseball',
    'Volleyball',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sportName.length,
        itemBuilder: (context, index) {
          return SportListTile(sportName: sportName[index],);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}