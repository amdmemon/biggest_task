import 'dart:io';

import 'package:fibe_ui/src/features/authentication/data/data%20source/remote/remote_source.dart';
import 'package:fibe_ui/src/features/authentication/domain/repository/auth_repository.dart';

class AuthRepositoryImp extends AuthRepository {

  AuthRemoteSource authRemoteSource;

  AuthRepositoryImp({required this.authRemoteSource});


  @override
  void authSendOtp(String email) {
    authRemoteSource.authSendOtp(email);
  }

  @override
  Future<bool> authVerifyOtp(int otp) async {
      try {
        return authRemoteSource.authVerifyOtp(otp);
      } on SocketException {
        return false;
      } catch (e) {
        return false;
      }
  }


}