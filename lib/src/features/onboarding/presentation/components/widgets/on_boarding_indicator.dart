import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator(
      {Key? key,required this.currentIndex})
      : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            4,
            (index) => Container(
                  margin: EdgeInsets.only(right: 6.w(context)),
                  height: 6.h(context),
                  width: 6.w(context),
                  decoration: BoxDecoration(
                      color: currentIndex == index
                          ? AppColors.onBoardingSelectedIndicator
                          : index > currentIndex
                              ? AppColors.onBoardingPendingIndicator
                              : AppColors.onBoardingPreviousSelectedIndicator,
                      shape: BoxShape.circle),
                )));
  }
}
