import 'package:bloc/bloc.dart';
import 'package:carwash/feature/register/data/repo/register_repo.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterRepo _registerRepo;
  RegisterCubit(
      this._registerRepo
      ) : super(RegisterInitial());



  register(){
    _registerRepo.register();
  }
}