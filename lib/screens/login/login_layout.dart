import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/home/home_layout.dart';
import 'package:project_calendar/screens/login/cubit/login_cubit.dart';
import 'package:project_calendar/shared/config/assets.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/enums/social_provider.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';
import 'package:project_calendar/shared/widgets/custom_text_field.dart';
import 'package:project_calendar/shared/widgets/social_login_button.dart';
import 'package:project_calendar/shared/widgets/vertical_space.dart';

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
          } else if (state is LoginSuccessfulState) {
            Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
          }
        },
        child: const LoginView(),
      ),
    );
  }
}
