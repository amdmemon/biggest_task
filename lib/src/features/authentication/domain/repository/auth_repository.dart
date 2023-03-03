abstract class AuthRepository{

   void authSendOtp(String email);
   Future<bool> authVerifyOtp(int otp);

}