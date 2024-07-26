import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/models/exeptions/went_wrong.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  bool _isPasswordHidden = true;
  bool _isLoginButtonEnabled = false;

  bool get isPasswordHidden => _isPasswordHidden;

  bool get isLoginButtonEnabled => _isLoginButtonEnabled;

  set setPasswordVisibility(bool val) {
    _isPasswordHidden = val;
    emit(LoginPasswordVisibilityChangedState());
  }

  LoginCubit() : super(LoginInitial());

  Future init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } on Exception catch (e) {
      emit(LoginErrorState(e));
    } catch (e) {
      emit(LoginErrorState(WentWrongExeption()));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passController.dispose();
    return super.close();
  }

  void onLogin() {}

  void setLoginButtonState(String val) {
    final newState = emailController.text.isNotEmpty && passController.text.isNotEmpty;
    if (newState != _isLoginButtonEnabled) {
      _isLoginButtonEnabled = newState;
      emit(LoginButtonStateChangedState());
    }
  }
}
