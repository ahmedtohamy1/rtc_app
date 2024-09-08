import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rtc_app/features/login/data/repos/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginInitial());

  login(String email, String password) {
    emit(LoginLoading());

    try {
      loginRepo.login(email, password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}
