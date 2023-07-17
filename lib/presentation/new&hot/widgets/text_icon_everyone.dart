import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class TextIconEveryOne extends StatelessWidget {
  final IconData icon;
  final String title;
  const TextIconEveryOne({
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
          size: 24,
          color: kwhite,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 10, color: kwhite),
        ),
      ],
    );
  }
}
