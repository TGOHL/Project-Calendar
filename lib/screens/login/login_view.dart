part of 'login_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (_, current) {
          return true;
        },
        builder: (context, state) {
          return Center();
        },
      ),
    );
  }
}
