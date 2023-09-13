import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>((event, emit) {
      if (event is _Login) {
        if (event.pw == '12345') {
          emit(state.copyWith(isLogin: true));
        }
      }
    });
  }
}
