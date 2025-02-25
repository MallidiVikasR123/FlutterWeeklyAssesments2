import 'package:flutter/material.dart';

import '../../widgets/shorts_screen_options.dart';

class SingleShort extends StatelessWidget {
  final int index;
  SingleShort({super.key, required this.index});
  final List<String> header = [
    'Subscribtion',
    'Live',
    'Treanding',
    'Music',
    'Gaming',
    'News',
    'Fashion & Beauty',
    'Learning',
    'Shorts',
    'Creator'
  ];
  final List<IconData> headerIcons = [
    Icons.subscriptions,
    Icons.live_tv,
    Icons.trending_up,
    Icons.music_note,
    Icons.sports_esports,
    Icons.article,
    Icons.shopping_bag,
    Icons.school,
    Icons.video_collection,
    Icons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/${4 - index}.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (ind) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                headerIcons[ind],
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                header[ind],
                                style: const TextStyle(color: Colors.white),
                                textScaler: const TextScaler.linear(1),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // channel details
                    Row(
                      children: [
                        const CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '@ThePlantiBoys',
                          style: TextStyle(color: Colors.white),
                          textScaler: TextScaler.linear(1),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Subscribe',
                            style: TextStyle(color: Colors.black),
                            textScaler: TextScaler.linear(1),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),

                    // video title
                    const Row(
                      children: [
                        Text(
                          ' He tells me when he is thirsty...',
                          style: TextStyle(color: Colors.white),
                          textScaler: TextScaler.linear(1),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),

                    // song details
                    const Row(
                      children: [
                        Icon(
                          Icons.music_note_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'School Rooftop (Bird Sounds)  hisohkah',
                          style: TextStyle(color: Colors.white),
                          textScaler: TextScaler.linear(1),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: const ShortsScreenOptions(),
    );
  }
}
