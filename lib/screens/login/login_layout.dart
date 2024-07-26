import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/screens/login/cubit/login_cubit.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';

part 'login_view.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit()..init(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginErrorState) {
            ToastHelper.of(context).showError(state.error.toString());
          }
        },
        child: const LoginView(),
      ),
    );
  }
}
