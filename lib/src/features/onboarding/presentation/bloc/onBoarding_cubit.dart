import 'package:fibe_ui/src/core/app_images.dart';
import 'package:fibe_ui/src/core/app_strings.dart';
import 'package:fibe_ui/src/features/authentication/presentation/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/widgets/onBoarding_widget.dart';


class OnBoardingCubit extends Cubit<int> {
  final List<Widget> listOnScreens = [
    const OnBoardingWidget(
        fit: BoxFit.fill,
        imgHeight: 463.94,
        headerText: AppStrings.firstOnBoardingString1,
        imageUrl: AppImages.onBoardingFirst,
        subHeaderText: AppStrings.firstOnBoardingString2,
        subHeaderMargin: EdgeInsets.only(left: 24,right: 24,bottom: 30),
        subHeaderHeight: 74),
    const OnBoardingWidget(
        imgHeight: 426.9,
        headerTopMargin: 23.1,
        headerText: AppStrings.secondBoardingString1,
        imageUrl: AppImages.onBoardingSecond,
        subHeaderText: AppStrings.secondBoardingString2,
        subHeaderMargin: EdgeInsets.only(left: 24,right: 24,bottom: 35),
        subHeaderHeight: 101),
    const OnBoardingWidget(
        imgHeight: 435.1,
        headerTopMargin: 14.9,
        headerText: AppStrings.thirdBoardingString1,
        imageUrl: AppImages.onBoardingThird,
        subHeaderText: AppStrings.thirdBoardingString2,
        subHeaderMargin: EdgeInsets.only(left: 41,right: 40,bottom: 16),
        subHeaderHeight: 120),
    const OnBoardingWidget(
        headerBottomMargin: 40,
        headerTopMargin: 9.13,
        imgHeight: 440.87,
        headerHeight: 32,
        headerText: AppStrings.fourthBoardingString1,
        imageUrl: AppImages.onBoardingFourth,
        subHeaderText: AppStrings.fourthBoardingString2,
        subHeaderMargin: EdgeInsets.only(left: 41,right: 40,bottom: 16),
        subHeaderHeight: 120),
  ];

  OnBoardingCubit() : super(0);

  void onPageChange(int currentIndex) {
    emit(currentIndex);
  }

  void onNextPress(PageController controller, context) {
    if (state == listOnScreens.length - 1) {
      Navigator.of(context)
          .pushReplacementNamed(SignUp.routeName);
    } else {
      controller.animateToPage(state + 1,
          duration: const Duration(milliseconds: 1), curve: Curves.linear);
    }
  }
}
