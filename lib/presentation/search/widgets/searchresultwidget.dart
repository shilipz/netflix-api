import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/functions/release_function/search_function.dart';
import 'package:netflix/presentation/search/searchscreen.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheigth20,
        Expanded(
          child: FutureBuilder(
            future: getimageSearchGrid(searchControllor.text.trim()),
            builder: (context, snapshot) {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 220,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return snapshot.hasData
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}'),
                                  fit: BoxFit.cover)),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final int index;
  const MainCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image:
                  AssetImage('assets/images/ryqcPZCEnEahBW4X06QZBUmtavp.jpg'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
