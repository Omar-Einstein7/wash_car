import 'package:carwash/core/di/service_locator.dart';
import 'package:carwash/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';

class RegisterRepo {

  
 



  register()async{
    try{
      final response=await sl<DioClient>().dio.post('path',data: {

      });
    }catch(e){

    }
  }
}