import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/components/widgets/onBoarding_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onBoarding_body.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(
      {Key? key,
      this.imgHeight,
      this.headerTopMargin,
      this.headerHeight,
      this.headerBottomMargin,
      required this.headerText,
      required this.imageUrl,
      required this.subHeaderText,
      required this.subHeaderMargin,
      required this.subHeaderHeight,
      this.fit})
      : super(key: key);

  final double? imgHeight;
  final double? headerTopMargin;
  final double? headerBottomMargin;
  final double? headerHeight;
  final double? subHeaderHeight;
  final String imageUrl;
  final String headerText;
  final String subHeaderText;
  final EdgeInsets subHeaderMargin;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: imgHeight?.h(context) ?? 450.h(context),
            width: double.infinity,
            child: SvgPicture.asset(
              imageUrl,
              fit: fit ?? BoxFit.cover,
            )),
        OnBoardingHeader(
          text: headerText,
          topMargin: headerTopMargin?.h(context) ?? 18.06.h(context),
          height: headerHeight?.h(context),
          bottomMargin: headerBottomMargin?.h(context),
        ),
        OnBoardingBody(
            height: subHeaderHeight?.h(context),
            text: subHeaderText,
            margin: EdgeInsets.only(
                left: subHeaderMargin.left.w(context),
                right: subHeaderMargin.right.w(context),
                bottom: subHeaderMargin.bottom.h(context))),
      ],
    );
  }
}
