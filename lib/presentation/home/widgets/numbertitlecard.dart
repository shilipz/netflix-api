import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/functions/release_function/category_functions.dart';

import '../../widgets/main_title.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 TV Shows In India Today'),
        kheigth,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getImageTop10(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData
                      ? Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    height: 150,
                                    width: 40,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}'))),
                                  ),
                                ],
                              ),
                              Positioned(
                                left: 10,
                                bottom: -26,
                                child: BorderedText(
                                  strokeWidth: 6.0,
                                  strokeColor: Colors.grey,
                                  child: Text(
                                    '${index + 1}',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 120,
                                        decoration: TextDecoration.none,
                                        decorationColor: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
