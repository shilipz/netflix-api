import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/maincardwidget.dart';
import '../../core/constants.dart';
import 'maintitlewidget.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) => const MainCardWidget()),
        ),
      )
    ]);
  }
}
