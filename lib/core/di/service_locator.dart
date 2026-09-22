

import 'package:carwash/core/networking/dio_factory.dart';
import 'package:carwash/feature/register/data/repo/register_repo.dart';
import 'package:carwash/feature/register/presentation/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;


Future<void> setupGetIt()async{

  sl.registerSingleton<DioClient>(DioClient());

  //repo
  sl.registerLazySingleton<RegisterRepo>(()=>RegisterRepo());

  //cubits
  sl.registerLazySingleton<RegisterCubit>(()=>RegisterCubit(sl()));

  //usecases
}