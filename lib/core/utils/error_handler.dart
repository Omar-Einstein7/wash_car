import 'package:dio/dio.dart';

class AppErrorHandler {
  static String format(dynamic error) {
    if (error is String) return error;

    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return 'Connection timeout with server';
        case DioExceptionType.sendTimeout:
          return 'Send timeout with server';
        case DioExceptionType.receiveTimeout:
          return 'Receive timeout with server';
        case DioExceptionType.badResponse:
          final responseData = error.response?.data;
          if (responseData is Map && responseData.containsKey('message')) {
            return responseData['message'].toString();
          }
          return 'Server returned status code ${error.response?.statusCode}';
        case DioExceptionType.cancel:
          return 'Request to server was cancelled';
        case DioExceptionType.connectionError:
          return 'No internet connection';
        default:
          return 'Network error occurred';
      }
    }

    try {
      if (error?.message != null) return error.message.toString();
      if (error?.toString() != null) return error.toString();
    } catch (_) {}

    return 'An unexpected error occurred';
  }
}
