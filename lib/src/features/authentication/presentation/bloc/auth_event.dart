import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {}

class AuthTimerStartEvent extends AuthEvent {
  final int seconds;

  AuthTimerStartEvent({required this.seconds});

  @override
  List<Object?> get props => [seconds];
}

class AuthTimerCompleteEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class AuthSendOtpEvent extends AuthEvent {
  final String email;

  AuthSendOtpEvent({required this.email});

  @override
  List<Object?> get props => [];
}
