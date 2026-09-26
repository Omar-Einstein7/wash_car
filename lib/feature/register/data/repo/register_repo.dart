import 'package:carwash/core/di/service_locator.dart';
import 'package:carwash/core/networking/dio_factory.dart';

class RegisterRepo {
  Future<dynamic> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final response = await sl<DioClient>().dio.post(
        '/register',
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
        },
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
