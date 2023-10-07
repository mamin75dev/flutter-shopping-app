import 'package:flutter/material.dart';
import 'package:shopping/ui/resources/colors.dart';

class IntroContent {
  String title, description, image;
  Color color;

  IntroContent(this.title, this.description, this.image, this.color);

  static List<IntroContent> contents() {
    return [
      IntroContent(
        "Women's Fashion",
        "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end.",
        "assets/images/intro_1.jpg",
        AppColor.greeenBackground,
      ),
      IntroContent(
        "Men's Fashion",
        "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end.",
        "assets/images/intro_2.jpeg",
        AppColor.yellowBackground,
      ),
      IntroContent(
        "Accessories",
        "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end.",
        "assets/images/intro_1.jpg",
        AppColor.pinkBackground,
      ),
    ];
  }
}
