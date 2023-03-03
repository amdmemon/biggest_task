import 'dart:async';

import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/core/app_images.dart';
import 'package:fibe_ui/src/core/app_size_config.dart';
import 'package:fibe_ui/src/core/app_strings.dart';
import 'package:fibe_ui/src/core/widgets/global_button.dart';
import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:fibe_ui/src/features/authentication/presentation/components/otp_textfield.dart';
import 'package:fibe_ui/src/features/authentication/presentation/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/app_fonts.dart';

import 'bloc/auth_event.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  static const String routeName = '/verifyNumber';

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  int timer = 60;
  late Timer timers;

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().restartTimer(context.read<AuthBloc>());
  }

  @override
  Widget build(BuildContext context) {
    final bool isVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!isVisible)
                SizedBox(
                  height: 327.h(context),
                  child: SvgPicture.asset(AppImages.verifyImg),
                ),
              Container(
                  height: 32.h(context),
                  margin: EdgeInsets.only(
                      left: 24.w(context),
                      right: 24.w(context),
                      top: isVisible ? 100.h(context) : 10.18.h(context),
                      bottom: 8.h(context)),
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.verifyText1,
                    style: TextStyle(
                        color: AppColors.blackTextColor,
                        fontFamily: AppFontFamily.f37semiExBoldW800,
                        fontSize: 24.sp(context)),
                  )),
              Container(
                  height: 48.h(context),
                  margin: EdgeInsets.only(
                      left: 24.w(context),
                      right: 24.w(context),
                      bottom: 39.h(context)),
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.verifyText2,
                    style: TextStyle(
                      color: AppColors.mediumBlackTxrColor,
                      fontFamily: AppFontFamily.f37RegularW400,
                      fontSize: 16.sp(context),
                    ),
                  )),
              const OtpTextField(),
              Container(
                //
                margin: EdgeInsets.only(
                    left: 121.w(context),
                    right: 122.w(context),
                    bottom: isVisible ? 64.h(context) : 122.h(context)),
                child:
                    BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  if (state is TimerStartState) {
                    return Text(
                      '${AppStrings.resend} 0:${state.seconds}',
                      style: TextStyle(
                          color: AppColors.blueLight,
                          fontFamily: AppFontFamily.f37RegularW400,
                          fontSize: 16.sp(context)),
                    );
                  }
                  if (state is AuthTimerCompleteState) {
                    return InkWell(
                      onTap: () {
                        context
                            .read<AuthBloc>()
                            .restartTimer(context.read<AuthBloc>());
                      },
                      child: Text(
                        AppStrings.resend.substring(0, 11),
                        style: TextStyle(
                            color: AppColors.blueLight,
                            fontFamily: AppFontFamily.f37RegularW400,
                            fontSize: 16.sp(context)),
                      ),
                    );
                  }
                  return Text(
                    '${AppStrings.resend} 0:00',
                    style: TextStyle(
                        color: AppColors.blueLight,
                        fontFamily: AppFontFamily.f37RegularW400,
                        fontSize: 16.sp(context)),
                  );
                }),
              ),
              GlobalButton(
                  onTap: () => Navigator.of(context)
                      .pushReplacementNamed(GetStarted.routeName),
                  text: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
