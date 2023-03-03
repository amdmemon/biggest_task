import 'package:fibe_ui/src/core/app_colors.dart';
import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:fibe_ui/src/features/di.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/bloc/onBoarding_cubit.dart';
import 'package:fibe_ui/src/features/onboarding/presentation/onboarding.dart';
import 'package:fibe_ui/src/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  init();
  runApp(const BiggestTask());
  const SystemUiOverlayStyle(statusBarColor: Colors.white);
}

class BiggestTask extends StatelessWidget {
  const BiggestTask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: MaterialApp(
        initialRoute: OnBoarding.routeName,
          onGenerateRoute: AppRoutes.generatedRoute,
          theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: AppColors.scaffoldBgColor
          ),
          // home: BlocProvider(
          //   create: (context) => OnBoardingCubit(),
          //   child: OnBoarding(),
          // )
      ),
    );
  }
}
