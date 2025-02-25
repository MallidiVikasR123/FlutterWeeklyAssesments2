import '/views/shortscreen/single_short.dart';
import 'package:flutter/material.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});
  // final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Shorts',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, letterSpacing: 1),
          textScaler: TextScaler.linear(1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 30,
            ),
          ),
        ],
      ),
      body: PageView.custom(
          scrollDirection: Axis.vertical,
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return SingleShort(index: index);
            },
            childCount: 4,
          )),
    );
  }
}
