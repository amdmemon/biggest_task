import 'package:fibe_ui/src/features/authentication/domain/repository/auth_repository.dart';

class AuthUseCase{

  AuthRepository repository;

  AuthUseCase({required this.repository});

  void sendOtp(String email){
    repository.authSendOtp(email);
  }

  void verifyOtp(otp){
    repository.authVerifyOtp(otp);
  }



}