import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_fonts.dart';
import '../../../../core/app_colors.dart';


class AuthTextField extends StatefulWidget {
  const AuthTextField({Key? key, required this.text, required this.hindText,this.isPassword,this.filled,this.lableColor})
      : super(key: key);

  final String text;
  final String hindText;
  final bool? isPassword;
  final bool? filled;
  final Color? lableColor;


  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76.h(context),
      width: 327.w(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 13.sp(context),
                fontFamily: AppFontFamily.f37MediumW500,color: widget.lableColor),
          ),
          SizedBox(height: 12.h(context)),
          SizedBox(
            height: 48.h(context),
            child: TextFormField(
              obscureText: widget.isPassword ?? false,
              style: const TextStyle(fontFamily: AppFontFamily.f37MediumW500,),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: widget.hindText,
                  hintStyle: TextStyle(
                      color: AppColors.grey3,
                      fontFamily: AppFontFamily.f37RegularW400,
                      fontSize: 16.sp(context)),
                  contentPadding: const EdgeInsets.only(left: 16),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      )),
                  filled: widget.filled ?? true,
                  fillColor: AppColors.lightGrey),
            ),
          )
        ],
      ),
    );
  }
}
