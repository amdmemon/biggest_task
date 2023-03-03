import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/core/app_strings.dart';
import 'package:fibe_ui/src/core/widgets/global_button.dart';
import 'package:fibe_ui/src/features/authentication/presentation/login.dart';
import 'package:flutter/material.dart';
import '../../../core/app_fonts.dart';

import 'components/sigup_form_widget.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  static const String routeName = '/getStarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 327.w(context),
              height: 32.h(context),
              margin: EdgeInsets.only(top: 76.h(context), left: 24.w(context)),
              child: Text(
                AppStrings.getStarted,
                style: TextStyle(
                    fontFamily: AppFontFamily.f37semiExBoldW800,
                    fontSize: 24.sp(context)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 327.w(context),
              height: 27.h(context),
              margin: EdgeInsets.only(top: 8.h(context), left: 24.w(context)),
              child: Text(
                AppStrings.waitForClient,
                style: TextStyle(
                    fontFamily: AppFontFamily.f37RegularW400,
                    fontSize: 16.sp(context),
                    color: AppColors.mediumBlackTxrColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 25.53.w(context),
                      top: 22.23.h(context),
                      right: 20.13.w(context)),
                  height: 15.34.h(context),
                  width: 15.34.w(context),
                  child: Transform.scale(
                    scale: 1,
                    child: Checkbox(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.07))),
                      value: true,
                      onChanged: (val) {},
                      checkColor: AppColors.scaffoldBgColor,
                      activeColor: AppColors.uacAccent,
                    ),
                  ),
                ),
                Container(
                  width: 273.w(context),
                  height: 27.h(context),
                  margin: EdgeInsets.only(top: 19.h(context)),
                  child: Text(
                    AppStrings.iamSurrogate,
                    style: TextStyle(
                        fontSize: 16.sp(context),
                        fontFamily: AppFontFamily.centuryRegularW400,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const SignUpForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 25.53.w(context),
                      top: 28.53.h(context),
                      right: 17.53.w(context)),
                  height: 15.34.h(context),
                  width: 15.34.w(context),
                  child: Transform.scale(
                    scale: 1,
                    child: Checkbox(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.07))),
                      value: true,
                      onChanged: (val) {},
                      checkColor: AppColors.scaffoldBgColor,
                      activeColor: AppColors.blueLight,
                    ),
                  ),
                ),
                Container(
                  // width: 239.w(context),
                  height: 18.h(context),
                  margin: EdgeInsets.only(top: 27.h(context)),
                  child: Text(
                    AppStrings.accept,
                    style: TextStyle(
                        fontSize: 16.sp(context),
                        fontFamily: AppFontFamily.f37RegularW400,
                        color: AppColors.grey),
                  ),
                ),
                SizedBox(width: 5.w(context),),
                Text(
                  AppStrings.term,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.blueLight,
                    fontSize: 16.sp(context),
                    fontFamily: AppFontFamily.f37MediumW500,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 41.h(context),
            ),
            GlobalButton(
              onTap: () => Navigator.of(context).pushReplacementNamed(Login.routeName),
              text: 'Sign up',
              margin: EdgeInsets.only(
                  left: 24.w(context),
                  right: 24.w(context),
                  bottom: 84.h(context)),
            )
          ],
        ),
      ),
    );
  }
}
