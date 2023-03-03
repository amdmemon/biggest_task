import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_fonts.dart';
import '../../../../../core/app_colors.dart';


class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key,required this.text,this.margin,this.width,this.alignment,this.height}) : super(key: key);

  final String text;
  final EdgeInsets? margin;
  final double? width;
  final Alignment? alignment;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return  Container(
      //color: Colors.red,
      height: height ?? 120.h(context),
      alignment: alignment ??Alignment.center,
      width: width ?? 327.w(context),
      margin: margin ?? EdgeInsets.only(left: 24.w(context), right: 24.w(context)),
      child: Text(text,
          style: TextStyle(
              color: AppColors.mediumBlackTxrColor,
              fontSize: 16.sp(context),
              fontFamily: AppFontFamily.f37RegularW400)),
    );
  }
}
