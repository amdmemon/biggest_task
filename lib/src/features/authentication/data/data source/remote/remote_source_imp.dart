import 'dart:io';

import 'package:email_otp/email_otp.dart';
import 'package:fibe_ui/src/features/authentication/data/data%20source/remote/remote_source.dart';

class AppRemoteSourceImp extends AuthRemoteSource {

  EmailOTP config = EmailOTP();

  AppRemoteSourceImp();

  @override
  void authSendOtp(String userEmail) {
    config.setConfig(
        appEmail: 'biggestTask@gmail.com',
        userEmail:userEmail,
        otpType: OTPType.digitsOnly,
        otpLength: 4,
    );
    config.sendOTP();
  }

  @override
  Future<bool> authVerifyOtp(otp) async {
    try {
      return config.verifyOTP(otp: otp);
    } on SocketException {
      throw const SocketException('Internet Not Found');
    }
  }


}