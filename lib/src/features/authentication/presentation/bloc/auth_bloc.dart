import 'dart:async';

import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_event.dart';
import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/auth_usecase.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  AuthUseCase authUseCase;

  AuthBloc({required this.authUseCase}) : super(AuthInitialState()) {
    on<AuthTimerStartEvent>(_onTimerStart);
    on<AuthTimerCompleteEvent>(_onTimerComplete);
  }

  void _onTimerStart(AuthTimerStartEvent event, Emitter<AuthState> emit) {
    emit(TimerStartState(seconds: event.seconds));

  }

  void _onTimerComplete(AuthTimerCompleteEvent event,Emitter<AuthState> emit){
    emit(AuthTimerCompleteState());
  }

  void _onSendOTP(AuthSendOtpEvent event,Emitter<AuthState> emit){
    authUseCase.sendOtp(event.email);
  }


  void restartTimer(AuthBloc bloc) {
    int duration =60;
    Timer timer;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick > 5) {
        timer.cancel();
        bloc.add(AuthTimerCompleteEvent());
      } else {
        duration--;
        bloc.add(AuthTimerStartEvent(seconds: duration));
      }
    });
  }
}
