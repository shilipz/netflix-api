import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/functions/release_function/category_functions.dart';
import 'package:netflix/presentation/download/widgets/downloadscreenimage.dart';

import '../../../core/colors/colors.dart';

class SectionMid extends StatelessWidget {
  const SectionMid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(
              color: kwhite, fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheigth,
        const Text(
          "We will download a personolised selection of\n movies and shows for you ,so there's \n always something to watch on your \ndevice",
          style: TextStyle(color: kgreycolor, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        kheigth,
        SizedBox(
          height: size.width,
          width: size.width,
          child: FutureBuilder(
            future: getImagePopular(),
            builder: (context, snapshot) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: kgreycolor.withOpacity(0.5),
                      radius: size.width * 0.35,
                    ),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.5),
                    image:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[3].posterPath}',
                    rotation: -15,
                    margin: const EdgeInsets.only(right: 150, bottom: 0),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.5),
                    image:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[11].posterPath}',
                    rotation: 15,
                    margin: const EdgeInsets.only(left: 150, bottom: 0),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.55),
                    image:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[19].posterPath}',
                    rotation: 0,
                    margin: const EdgeInsets.only(top: 20),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
