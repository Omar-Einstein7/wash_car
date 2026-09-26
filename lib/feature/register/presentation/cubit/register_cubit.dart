import 'package:carwash/core/utils/error_handler.dart';
import 'package:carwash/feature/register/data/repo/register_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(RegisterInitial());

  Future<void> emitRegisterStates({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(RegisterLoading());
    try {
      final response = await _registerRepo.register(
        name: name,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
      emit(RegisterSuccess(response));
    } catch (e) {
      emit(RegisterError(AppErrorHandler.format(e)));
    }
  }
}
