import 'package:fibe_ui/src/core/app_images.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/core/widgets/global_button.dart';
import 'package:fibe_ui/src/features/authentication/presentation/components/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/app_fonts.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_strings.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.authBgImage), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.w(context)),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 132.w(context),
                    top: 49.h(context),
                    bottom: 24.h(context)),
                child: Text(AppStrings.logIn,
                    style: TextStyle(
                        fontSize: 24.sp(context),
                        fontFamily: AppFontFamily.f37semiBoldW600)),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 118.w(context)),
                height: 104.h(context),
                width: 92.w(context),
                child: Image.asset(AppImages.loginImage),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 50.w(context),
                  top: 32.h(context),
                  right: 48.w(context),
                ),
                height: 80.h(context),
                child: Text(
                  AppStrings.sigUpWelcomeText,
                  style: TextStyle(
                      fontSize: 32.sp(context),
                      fontFamily: AppFontFamily.f37semiBoldW600,
                      color: AppColors.signUpBlueColor),
                ),
              ),
              SizedBox(
                height: 53.h(context),
              ),
              const AuthTextField(
                text: 'Email',
                hindText: 'Email',
                lableColor: AppColors.grey,
              ),
              SizedBox(
                height: 16.h(context),
              ),
              const AuthTextField(
                  text: 'Password',
                  hindText: 'Password',
                  isPassword: true,
                  lableColor: AppColors.grey),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                      left: 166.w(context),
                      top: 16.h(context),
                      right: 9.w(context),
                      bottom: 36.h(context)),
                  alignment: Alignment.center,
                  height: 40.h(context),
                  child: Text(
                    AppStrings.forgotPw,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.blueLight,
                      fontSize: 16.sp(context),
                      fontFamily: AppFontFamily.f37semiBoldW600,
                    ),
                  ),
                ),
              ),
              GlobalButton(
                onTap: () {},
                text: 'Login',
                margin: EdgeInsets.only(bottom: 90.h(context)),
              )
            ],
          ),
        ),
      );

  }
}
