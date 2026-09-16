

import 'package:carwash/feature/register/data/repo/register_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;


Future<void> setupGetIt()async{

  Dio dio = Dio();

  getIt.registerLazySingleton<RegisterRepo>(()=>RegisterRepo(getIt()));

}