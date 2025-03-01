import 'package:app/configs/colors/app_color.dart';
import 'package:flutter/material.dart';

class TaskBackground extends StatelessWidget {
  final Widget? child;
  const TaskBackground({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 355,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(165),
              bottomRight: Radius.circular(165),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: 200,
                decoration: const BoxDecoration(
                    color: AppColor.secondary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(180),
                      bottomRight: Radius.circular(180),
                      topLeft: Radius.circular(80),
                      bottomLeft: Radius.circular(80),
                    )),
              ),
              const Spacer(),
              Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 210,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: AppColor.secondary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(180),
                          bottomLeft: Radius.circular(180),
                          topRight: Radius.circular(59),
                          bottomRight: Radius.circular(80),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        child ?? const SizedBox(),
      ],
    );
  }
}
