import 'package:app/providers/bnb_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../homescreen/home_screen.dart';
import '../shortscreen/shorts_screen.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  Widget _screen() {
    switch (
        Provider.of<BnbIndexProvider>(context, listen: false).currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ShortsScreen();
      default:
        return Scaffold(
          body: Center(
            child: Text(
                'Bottom Navigation Bar Page ${Provider.of<BnbIndexProvider>(context, listen: false).currentIndex}'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      Provider.of<BnbIndexProvider>(context, listen: false)
          .setcurrentIndex(index);
    }

    return Scaffold(
      body: _screen(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: Provider.of<BnbIndexProvider>(context).currentIndex,
          onTap: (value) => onItemTapped(value),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Provider.of<BnbIndexProvider>(context, listen: false)
                            .currentIndex !=
                        0
                    ? Icons.home_outlined
                    : Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Provider.of<BnbIndexProvider>(context, listen: false)
                            .currentIndex !=
                        1
                    ? Icons.play_arrow_outlined
                    : Icons.play_arrow),
                label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Provider.of<BnbIndexProvider>(context, listen: false)
                              .currentIndex !=
                          2
                      ? Icons.add_circle_outline
                      : Icons.add_circle,
                  size: 35,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Provider.of<BnbIndexProvider>(context, listen: false)
                            .currentIndex !=
                        3
                    ? Icons.subscriptions_outlined
                    : Icons.subscriptions),
                label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Provider.of<BnbIndexProvider>(context, listen: false)
                            .currentIndex !=
                        4
                    ? Icons.person_pin_circle_outlined
                    : Icons.blur_circular_sharp),
                label: 'You'),
          ]),
    );
  }
}
