part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginErrorState extends LoginState {
  final Exception error;

  LoginErrorState(this.error);
}
