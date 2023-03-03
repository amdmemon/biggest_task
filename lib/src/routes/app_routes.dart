import 'package:fibe_ui/src/features/authentication/presentation/get_started.dart';
import 'package:fibe_ui/src/features/authentication/presentation/login.dart';
import 'package:fibe_ui/src/features/authentication/presentation/sign_up.dart';
import 'package:fibe_ui/src/features/authentication/presentation/verify_number.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/bloc/onBoarding_cubit.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static Route generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnBoarding.routeName:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<OnBoardingCubit>(
                create: (context) => OnBoardingCubit(), child: OnBoarding()));
      case SignUp.routeName:
        return MaterialPageRoute(builder: (context) => const SignUp());
      case VerifyNumber.routeName:
        return MaterialPageRoute(builder: (context) => const VerifyNumber());
      case GetStarted.routeName:
        return MaterialPageRoute(builder: (context) => const GetStarted());
      case Login.routeName :
        return MaterialPageRoute(builder: (context) => const Login());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
