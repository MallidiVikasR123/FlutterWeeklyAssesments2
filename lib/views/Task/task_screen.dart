import 'package:app/configs/colors/app_color.dart';
import 'package:app/widgets/task_background.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  final List<String> names = [
    'Basics',
    'Occupations',
    'Conversation',
    'Places',
    'Family members',
    'Food',
  ];
  final List<IconData> icons = [
    Icons.file_open,
    Icons.work,
    Icons.message,
    Icons.place,
    Icons.family_restroom,
    Icons.apple_rounded,
  ];
  final List<int> numerator = [4, 1, 3, 1, 3, 2];
  final List<int> denominator = [5, 5, 5, 5, 5, 5];
  final List<Color> colors = [
    AppColor.icon1,
    AppColor.icon2,
    AppColor.icon3,
    AppColor.icon4,
    AppColor.icon5,
    AppColor.icon6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Curse',
          textScaler: TextScaler.linear(1),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: TaskBackground(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 259,
              width: double.infinity,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Spanish',
                              textScaler: TextScaler.linear(1),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 145,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Begginer',
                                    textScaler: TextScaler.linear(1),
                                    style: TextStyle(
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 1.2,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 30,
                                    color: AppColor.primary,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.diamond,
                                  size: 34,
                                  color: AppColor.icon,
                                ),
                                Icon(
                                  Icons.diamond,
                                  size: 34,
                                  color: AppColor.icon,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    '2 Milestones',
                                    textScaler: TextScaler.linear(1),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 1.2,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          CircularPercentIndicator(
                            radius: 60,
                            lineWidth: 6,
                            animation: true,
                            animationDuration: 2000,
                            backgroundWidth: 3,
                            percent: 0.43,
                            progressColor: Colors.white,
                            backgroundColor: Colors.grey.shade300,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '43%',
                                  textScaler: TextScaler.linear(1),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Opacity(
                                  opacity: 0.59,
                                  child: Text(
                                    'Completed',
                                    textScaler: TextScaler.linear(1),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  children: List.generate(
                    6,
                    (index) => Card(
                        color: Colors.white,
                        elevation: 12,
                        shadowColor: Colors.black.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Card(
                                color: Colors.white,
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Icon(
                                    icons[index],
                                    size: 35,
                                    color: colors[index],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Text(
                                  names[index],
                                  textScaler: const TextScaler.linear(1),
                                ),
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Text(
                                  '${numerator[index]}/${denominator[index]}',
                                  textScaler: const TextScaler.linear(1),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              LinearProgressIndicator(
                                value: numerator[index] / denominator[index],
                                color: colors[index],
                                borderRadius: BorderRadius.circular(100),
                                minHeight: 5,
                                backgroundColor: Colors.grey[300],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
