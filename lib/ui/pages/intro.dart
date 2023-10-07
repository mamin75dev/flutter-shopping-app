import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping/data/intro_content.dart';
import 'package:shopping/ui/pages/login_register.dart';
import 'package:shopping/ui/resources/colors.dart';
import 'package:shopping/ui/widgets/intro_item.dart';
import 'package:shopping/ui/widgets/intro_pagination.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController(viewportFraction: 1, keepPage: true);

  int index = 0;
  var content = IntroContent.contents();

  void onNextPress() {
    if (index < 2) {
      controller.animateToPage(
        index + 1,
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceInOut,
      );
      setState(() {
        index++;
      });
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginRegisterPage()));
    }
  }

  void onSkipPress() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash_background.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: AppColor.darkBackground.withOpacity(0.9),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: 3,
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        index = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return IntroItem(
                          title: content[index].title,
                          description: content[index].description,
                          image: content[index].image,
                          color: content[index].color);
                    },
                  ),
                ),
                IntroPagination(
                  index: index,
                  onNextPress: onNextPress,
                  onSkipPress: onSkipPress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
