import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/download/downloadscreen.dart';
import 'package:netflix/presentation/fastluagh/fastlaugh.dart';
import 'package:netflix/presentation/home/homescreen.dart';
import 'package:netflix/presentation/mainpage/widgets/bottomnav.dart';
import 'package:netflix/presentation/new&hot/newandhot.dart';
import 'package:netflix/presentation/search/searchscreen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
    HomeScreen(),
    ScreenNewHot(),
    ScreenFastLaugh(),
    SearchScreen(),
    DownloadScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgorundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexnotifier,
          builder: (context, index, child) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBarwidget(),
    );
  }
}
