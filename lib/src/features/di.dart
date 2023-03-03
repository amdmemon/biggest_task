import 'package:email_otp/email_otp.dart';
import 'package:fibe_ui/src/features/authentication/data/data%20source/remote/remote_source.dart';
import 'package:fibe_ui/src/features/authentication/data/repository/auht_repository_imp.dart';
import 'package:fibe_ui/src/features/authentication/domain/repository/auth_repository.dart';
import 'package:fibe_ui/src/features/authentication/domain/usecases/auth_usecase.dart';
import 'package:fibe_ui/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import 'authentication/data/data source/remote/remote_source_imp.dart';

GetIt getIt = GetIt.instance;


 void init(){

   getIt.registerLazySingleton<AuthRemoteSource>(() => AppRemoteSourceImp());
   
   getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(authRemoteSource: getIt<AuthRemoteSource>()));
   
   getIt.registerLazySingleton(() => AuthUseCase(repository: getIt<AuthRepository>()));

   getIt.registerFactory(() => AuthBloc(authUseCase: getIt<AuthUseCase>()));

}