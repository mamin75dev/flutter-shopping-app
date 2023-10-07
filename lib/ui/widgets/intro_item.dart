import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping/ui/resources/colors.dart';

class IntroItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color color;

  const IntroItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Stack(
          children: [
            Transform.rotate(
              angle: -pi / 18,
              child: Container(
                width: 280,
                height: 325,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Container(
              width: 280,
              height: 325,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(color, BlendMode.color),
                ),
                color: AppColor.lightBackground,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(top: 80),
          alignment: AlignmentDirectional.centerStart,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Text(
            title,
            style: const TextStyle(color: AppColor.white, fontSize: 30),
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(top: 16),
          alignment: AlignmentDirectional.centerStart,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Text(
            description,
            style: const TextStyle(color: AppColor.white, fontSize: 18, letterSpacing: 1),
          ),
        ),
      ],
    );
  }
}
