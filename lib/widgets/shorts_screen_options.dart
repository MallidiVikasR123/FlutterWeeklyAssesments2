import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shorts_option_provider.dart';

class ShortsScreenOptions extends StatelessWidget {
  const ShortsScreenOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        options(
            Icons.thumb_up_alt_outlined, Icons.thumb_up, 0, context, '1.1k'),
        const SizedBox(height: 10),
        options(
            Icons.thumb_down_alt_outlined, Icons.thumb_down, 1, context, '103'),
        const SizedBox(height: 10),
        options(Icons.message_outlined, Icons.message, 2, context, 'Message'),
        const SizedBox(height: 10),
        options(Icons.share, Icons.share, 3, context, 'Share'),
        const SizedBox(height: 10),
        options(Icons.recycling_outlined, Icons.recycling, 4, context, 'Remix'),
        const SizedBox(height: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'assets/1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget options(IconData data, IconData activeData, int index,
      BuildContext context, String text) {
    final indexProvider = Provider.of<ShortsOptionProvider>(context);
    return Column(
      children: [
        IconButton(
          onPressed: () {
            indexProvider.setIndex(index);
          },
          icon:
              Provider.of<ShortsOptionProvider>(context, listen: false).index !=
                      index
                  ? Icon(data)
                  : Icon(activeData),
          iconSize: 30,
          color: Colors.white,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
