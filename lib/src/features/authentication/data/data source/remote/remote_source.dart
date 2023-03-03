import 'package:email_otp/email_otp.dart';

abstract class AuthRemoteSource{

  void authSendOtp(String userEmail);
  Future<bool> authVerifyOtp(otp);

}