import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/searchidle.dart';
import 'package:netflix/presentation/search/widgets/searchresultwidget.dart';

import '../../functions/release_function/search_function.dart';

const imgUrl =
    'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/1V4SPkV3bQvl85zK4FqwTzdfBs4.jpg';
const imgUrl2 =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/ygO9lowFMXWymATCrhoQXd6gCEh.jpg";

TextEditingController searchControllor = TextEditingController();
ValueNotifier searchScreenNotifier = ValueNotifier([]);

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ValueListenableBuilder(
              valueListenable: searchScreenNotifier,
              builder: (BuildContext context, value, Widget? child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(
                      focusNode: _focusNode,
                      controller: searchControllor,
                      onChanged: (value) {
                        getimageSearchGrid(value.trim());
                        searchScreenNotifier.notifyListeners();
                      },
                      backgroundColor: kgreycolor.withOpacity(0.3),
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: kgreycolor,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: kgreycolor,
                      ),
                      onTap: () {
                        searchControllor.clear;
                      },
                      style: const TextStyle(color: kwhite),
                    ),
                    kheigth,
                    (searchControllor.text.isEmpty)
                        ? const Expanded(child: SearchIdleWidget())
                        : const Expanded(child: SearchResultWidget())
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
