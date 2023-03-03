import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';
import '../app_fonts.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key,
    this.fontSize,
    this.height,
    this.width,
    this.radius,
    required this.onTap,
    required this.text,
    this.margin,
    this.fontFamily,
  })
      : super(key: key);

  final double? fontSize;
  final double? height;
  final double? width;
  final double? radius;
  final VoidCallback onTap;
  final String text;
  final EdgeInsets? margin;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.only(left: 24.w(context),right: 24.w(context),bottom: 36.h(context)),
      child: Material(
        shape: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(radius ?? 16)),borderSide: BorderSide.none ),
        color: AppColors.mediumBlackTxrColor,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(color: AppColors.blue,
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 16))),
            height: height?? 56.h(context),
            width: width ??327.w(context),
            child:Center(
              child: Text(
                  text,
                  style: TextStyle(fontSize: fontSize ?? 16.sp(context),color: AppColors.cmnButtonTxtColor,fontFamily: fontFamily ?? AppFontFamily.f37BlackW900,),
                ),
            ),

          ),
        ),
      ),
    );
  }
}
