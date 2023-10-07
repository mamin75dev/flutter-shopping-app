import 'package:flutter/material.dart';
import 'package:shopping/ui/resources/colors.dart';

class IntroPagination extends StatelessWidget {
  final int index;
  final Function onNextPress;
  final Function onSkipPress;
  const IntroPagination({
    super.key,
    required this.index,
    required this.onNextPress,
    required this.onSkipPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 40),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => onSkipPress(),
            child: Container(
              alignment: Alignment.center,
              width: 70,
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.white, width: 2),
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Text(
                "SKIP",
                style: TextStyle(color: AppColor.white, fontSize: 16),
              ),
            ),
          ),
          Container(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    width: index == i ? 9 : 7,
                    height: index == i ? 9 : 7,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == i ? AppColor.black : AppColor.lightBackground,
                        border: index == i ? Border.all(color: AppColor.white, width: 2) : null),
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onNextPress(),
            child: Container(
              alignment: Alignment.center,
              width: 70,
              height: 35,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Text(
                "NEXT",
                style: TextStyle(color: AppColor.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
