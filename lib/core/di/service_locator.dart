

import 'package:carwash/core/networking/dio_factory.dart';
import 'package:carwash/feature/register/data/repo/register_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;


Future<void> setupGetIt()async{

  sl.registerSingleton<DioClient>(DioClient());
  sl.registerLazySingleton<RegisterRepo>(()=>RegisterRepo(sl()));

}