import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable{

}

class AuthInitialState extends AuthState{

  @override
  List<Object?> get props => [];
}

class TimerStartState extends AuthState{

  final int seconds;

  TimerStartState({required this.seconds});

  @override
  List<Object?> get props => [seconds];
}

class AuthTimerCompleteState extends AuthState{

  @override
  List<Object?> get props => [];

}



