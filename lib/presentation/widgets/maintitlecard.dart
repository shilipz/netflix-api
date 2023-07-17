import 'package:flutter/material.dart';
import 'package:netflix/functions/release_function/category_functions.dart';
import 'package:netflix/presentation/widgets/maincardwidget.dart';
import '../../core/constants.dart';
import 'maintitlewidget.dart';

class Released extends StatelessWidget {
  final String title;
  const Released({
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
        child: FutureBuilder(
          future: getImagePopular(),
          builder: (context, snapshot) {
            return ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return snapshot.hasData
                    ? Padding(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.only(right: 8),
                        child: MainCardWidget(
                          imgString:
                              'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                        ),
                      )
                    : Center(child: CircularProgressIndicator());
              }),
            );
          },
        ),
      )
    ]);
  }
}

class Trending extends StatelessWidget {
  final String title;
  const Trending({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTitlewidget(title: title),
        ),
        kheigth,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getImageTrending(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData
                      ? Padding(
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.only(right: 8),
                          child: MainCardWidget(
                            imgString:
                                'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                          ),
                        )
                      : Center(child: CircularProgressIndicator());
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class Top10 extends StatelessWidget {
  final String title;
  const Top10({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTitlewidget(title: title),
        ),
        kheigth,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getImagePopular(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData
                      ? Padding(
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.only(right: 8),
                          child: MainCardWidget(
                            imgString:
                                'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                          ),
                        )
                      : Center(child: CircularProgressIndicator());
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class Drama extends StatelessWidget {
  final String title;
  const Drama({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTitlewidget(title: title),
        ),
        kheigth,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getImagePopular(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData
                      ? Padding(
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.only(right: 8),
                          child: MainCardWidget(
                            imgString:
                                'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                          ),
                        )
                      : Center(child: CircularProgressIndicator());
                }),
              );
            },
          ),
        )
      ],
    );
  }
}
