import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/functions/release_function/new_and_hot.dart';
import 'package:netflix/presentation/new&hot/everyones_watching.dart';
import 'package:netflix/presentation/new&hot/text_icon.dart';
import 'package:netflix/presentation/new&hot/widgets/everyoneswhatchingwidget.dart';
import '../../core/constants.dart';

List<String> dates = [
  '5',
  '12',
  '15',
  '6',
  '10',
  '26',
  '5',
  '12',
  '15',
  '6',
  '10'
];
List<String> months = [
  'Mar',
  'Jun',
  'Jan',
  'Dec',
  'Mar',
  'Aug',
  'Apr',
  'Mar',
  'Jun',
  'May',
  'Mar'
];

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 25,
                  height: 20,
                  color: Colors.blue,
                ),
                kwidth,
              ],
              bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  tabs: const [
                    Tab(
                      text: '🍟 Coming Soon',
                    ),
                    Tab(text: '👀 Everyones Watching ')
                  ]),
            ),
          ),
          body: TabBarView(
              children: [comingSoon(context), const EveryOnesWatching()])),
    );
  }

  Widget comingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: getImageNewAndHot(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 450,
                          child: Column(
                            children: [
                              Text(dates[index],
                                  style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 4)),
                              Text(months[index],
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width - 60,
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.network(
                                          'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}',
                                          height: 200,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Colors.black.withOpacity(0.5),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.volume_off,
                                                  size: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    kheigth,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '${snapshot.data?[index].title}',
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const Spacer(),
                                        const TextIcon(
                                          icon: CupertinoIcons.bell_solid,
                                          title: 'Reminder',
                                        ),
                                        kwidth,
                                        const TextIcon(
                                          icon: CupertinoIcons.info,
                                          title: 'Info',
                                        ),
                                        kwidth,
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Text('Coming On '),
                              kheigth20,
                              const Row(
                                children: [
                                  Text(
                                    'N',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ' Filims',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Text(
                                '${snapshot.data?[index].title}',
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                ),
                              ),
                              kheigth20,
                              Text(
                                '${snapshot.data?[index].overview}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: const TextStyle(
                                  fontSize: 11.7,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
      },
    );
  }
}
