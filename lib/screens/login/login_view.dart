part of 'login_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();
          return SafeArea(
            child: ListView(
              padding: EdgeInsets.all(contentPadding),
              children: [
                Text('Login', style: AppStyles.kB24TextStyle),
                VerticalSpace(height: 8.h),
                Text('Sign in to your account', style: AppStyles.kM14TextStyle.copyWith(color: AppThemes.fontSecondary)),
                VerticalSpace(height: 40.h),
                CustomTextField(
                  controller: cubit.emailController,
                  label: 'Username / Email',
                  hint: 'Enter username here',
                  onChanged: cubit.setLoginButtonState,
                ),
                VerticalSpace(height: contentPadding),
                CustomTextField(
                  controller: cubit.passController,
                  label: 'Password',
                  hint: 'Enter password here',
                  obscureText: cubit.isPasswordHidden,
                  onChanged: cubit.setLoginButtonState,
                ),
                VerticalSpace(height: contentPadding),
                Align(alignment: Alignment.centerRight, child: Text('Forgot Password ?', style: AppStyles.kSB14TextStyle)),
                VerticalSpace(height: contentPadding),
                ElevatedButton(
                  onPressed: cubit.isLoginButtonEnabled ? cubit.onLogin : null,
                  child: const Text('Login'),
                ),
                VerticalSpace(height: contentPadding),
                Align(
                  alignment: Alignment.center,
                  child: Text('Or login with account', style: AppStyles.kSB14TextStyle.copyWith(color: AppThemes.fontSecondary)),
                ),
                VerticalSpace(height: contentPadding),
                SocialLoginButton(
                  provider: SocialProvider.google,
                  onTap: () {},
                ),
                VerticalSpace(height: 16.h),
                SocialLoginButton(
                  provider: SocialProvider.facebook,
                  onTap: () {},
                ),
                VerticalSpace(height: 16.h),
                SocialLoginButton(
                  provider: SocialProvider.apple,
                  onTap: () {},
                ),
                VerticalSpace(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont’t have an account? ',
                      style: AppStyles.kM14TextStyle.copyWith(color: AppThemes.fontSecondary),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Register Here',
                        style: AppStyles.kB14TextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
