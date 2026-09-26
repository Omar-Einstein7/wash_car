

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {


  late Dio dio;

  DioClient(){

    Duration duration = Duration(seconds: 20);
    dio = Dio(BaseOptions(
      baseUrl: 'https://gcw.gosorsolutions.com/api/v1',
      receiveTimeout: duration
      )

    );

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,

    )
    );
    
  }





}