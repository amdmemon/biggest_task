import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/core/widgets/global_button.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/bloc/onBoarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/widgets/on_boarding_indicator.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  static const String routeName = '/onBoarding';

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 658.h(context),
          child: BlocBuilder<OnBoardingCubit, int>(
            builder: (context, state) {
              return PageView.builder(
                  onPageChanged: context.read<OnBoardingCubit>().onPageChange,
                  controller: _pageController,
                  itemCount:
                      context.read<OnBoardingCubit>().listOnScreens.length,
                  itemBuilder: (context, index) {
                    return context.read<OnBoardingCubit>().listOnScreens[index];
                  });
            },
          ),
        ),
        BlocBuilder<OnBoardingCubit, int>(
          builder: (context, state) {
            return OnBoardingIndicator(
              currentIndex: state,
            );
          },
        ),
        SizedBox(
          height: 56.h(context),
        ),
        GlobalButton(
          onTap: () => context
              .read<OnBoardingCubit>()
              .onNextPress(_pageController, context),
          text: 'Next',
        )
      ],
    ));
  }
}
