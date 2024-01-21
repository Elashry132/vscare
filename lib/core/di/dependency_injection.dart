import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vscare/core/networking/api_service.dart';
import 'package:vscare/core/networking/dio_factory.dart';
import 'package:vscare/features/signup/data/repos/sign_up_repo.dart';
import 'package:vscare/features/signup/logic/cubit/sign_up_cubit.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //dio& apiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
