part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginPasswordVisibilityChangedState extends LoginState {}

class LoginButtonStateChangedState extends LoginState {}

class LoginSuccessfulState extends LoginState {}

class LoginErrorState extends LoginState {
  final Exception error;

  LoginErrorState(this.error);
}
