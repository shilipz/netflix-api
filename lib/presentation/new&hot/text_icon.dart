import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  const TextIcon({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 18,
          color: kwhite,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 8, color: kwhite),
        ),
      ],
    );
  }
}
