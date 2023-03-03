import 'package:email_otp/email_otp.dart';
import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_images.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/core/app_strings.dart';
import 'package:fibe_ui/src/core/widgets/global_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/app_fonts.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  static const String routeName = '/sigUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.authBgImage),
                fit: BoxFit.fitWidth)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 144.h(context), left: 142.w(context)),
                height: 104.h(context),
                width: 92.w(context),
                child: Image.asset(AppImages.loginImage),
              ),
              Container(
                //  color: Colors.red,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: 74.w(context),
                    top: 32.h(context),
                    right: 72.w(context),
                    bottom: 144.h(context)),
                height: 80.h(context),
                child: Text(
                  AppStrings.sigUpWelcomeText,
                  style: TextStyle(
                      fontSize: 32.sp(context),
                      fontFamily: AppFontFamily.f37semiBoldW600,
                      color: AppColors.signUpBlueColor),
                ),
              ),
              Container(
                height: 308.h(context),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: AppColors.scaffoldBgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.h(context),
                      margin: EdgeInsets.only(
                          top: 8.h(context),
                          left: 163.w(context),
                          right: 164.w(context),
                          bottom: 28.h(context)),
                      color: AppColors.lightGrey,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 52.w(context)),
                      height: 28.h(context),
                      width: 272.w(context),
                      child: Text(
                        AppStrings.signUpEnterEmailText,
                        style: TextStyle(
                            fontSize: 22.sp(context),
                            fontFamily: AppFontFamily.gOTHICBW700,
                            color: AppColors.blackTextColor),
                      ),
                    ),
                    SizedBox(height: 8.h(context)),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 24.w(context)),
                      height: 48.h(context),
                      width: 327.w(context),
                      child: Text(
                        AppStrings.signUpSecondText,
                        style: TextStyle(
                            fontSize: 16.sp(context),
                            fontFamily: AppFontFamily.centuryRegularW400,
                            color: AppColors.grey),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: AppColors.lightGrey,
                      ),
                      margin: EdgeInsets.only(
                          left: 24.w(context),
                          right: 24.w(context),
                          top: 30.h(context)),
                      height: 48.h(context),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.w(context)),
                            width: 37.w(context),
                            height: 24.h(context),
                            child: SvgPicture.asset(
                              AppImages.emailIcon,
                              fit: BoxFit.fitHeight,
                              color: AppColors.grey3,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 16.sp(context),
                                  fontFamily: AppFontFamily.f37semiBoldW600,
                                  color: AppColors.blackTextColor),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 20.h(context), left: 12.w(context)),
                                  hintText: AppStrings.emailHintText,
                                  hintStyle: TextStyle(
                                      fontFamily:
                                          AppFontFamily.centuryRegularW400,
                                      fontSize: 16.sp(context),
                                      color: AppColors.grey3),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor: AppColors.lightGrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h(context),
                    ),
                    GlobalButton(onTap: () async{

                      EmailOTP config = EmailOTP();

                      config.setConfig(
                          appEmail: "ahmed@gmail.com",
                          appName: "Email OTP",
                          userEmail: 'dsddddad',
                          otpLength: 4,
                          otpType: OTPType.digitsOnly
                      );

                     var value = await config.sendOTP();

                     // config.verifyOTP(
                     //   otp:
                     // )

                      print(value);
                      // config.verifyOTP(
                      //   otp:
                      // );
                      Navigator.of(context).pushNamed('/verifyNumber');
                    } , text: 'Next')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
