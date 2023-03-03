import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_fonts.dart';
import '../../../../../core/app_colors.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({Key? key,required this.text,this.height,this.topMargin,this.bottomMargin}) : super(key: key);

  final String text;
  final double? height;
  final double? topMargin;
  final double? bottomMargin;

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        height: height ?? 64.h(context),
        width: 327.w(context),
        margin: EdgeInsets.only(
            left: 24.w(context),
            right: 24.w(context),
            top:  topMargin ??24.52.h(context),
            bottom: bottomMargin ?? 8.h(context)),
        child: Text(
          text,
          style: TextStyle(
              color: AppColors.blackTextColor,
              fontSize: 24.sp(context),
              fontFamily: AppFontFamily.f37semiBoldW600),
        ));
  }
}
