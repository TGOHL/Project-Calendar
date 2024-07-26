import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/models/exeptions/went_wrong.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
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
}
