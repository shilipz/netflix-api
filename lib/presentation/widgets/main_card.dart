import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String imgString;
  const MainCard({required this.imgString, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imgString))),
    );
  }
}
