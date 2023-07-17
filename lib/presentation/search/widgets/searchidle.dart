import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/functions/release_function/category_functions.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kheigth,
        Expanded(
          child: FutureBuilder(
            future: getImageTrending(),
            builder: (context, snapshot) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return snapshot.hasData
                        ? Row(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              kwidth,
                              Expanded(
                                  child: Text(
                                '${snapshot.data?[index].title}',
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                              const Icon(
                                Icons.play_circle_outline,
                                color: kwhite,
                                size: 45,
                              )
                            ],
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                              color: Colors.red,
                            ),
                          );
                  },
                  separatorBuilder: (context, index) => kheigth20,
                  itemCount: 10);
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.4,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(topsearch[index]), fit: BoxFit.cover)),
        ),
        kwidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kwhite, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
            backgroundColor: kwhite,
            radius: 25,
            child: Icon(
              Icons.play_circle_fill,
              color: kblackcolor,
              size: 50,
            ))
      ],
    );
  }
}
