import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rtc_app/features/login/ui/widgets/forgot_pass.dart';
import 'package:rtc_app/features/login/ui/widgets/login_button.dart';
import 'package:rtc_app/features/login/ui/widgets/login_img.dart';
import 'package:rtc_app/features/login/ui/widgets/login_welcome_text.dart';
import 'package:rtc_app/features/login/ui/widgets/my_text_field.dart';
import 'package:rtc_app/features/login/view_model/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoading) {
          print('Login Loading');
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is LoginSuccess) {
          print('Login Success');
        }
        if (state is LoginFailure) {
          print('Login Failure');
        }
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const LoginImg(),
                const SizedBox(
                  height: 20,
                ),
                const LoginWelcomeText(),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  icon: Icons.email,
                  hint: 'Enter Your email',
                  ctrlr: emailController,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black54,
                ),
                MyTextField(
                    ctrlr: passwordController,
                    icon: Icons.password_rounded,
                    hint: 'Enter Your password'),
                const SizedBox(height: 20),
                LoginButton(
                    email: emailController.text,
                    password: passwordController.text),
                const ForgotPass(),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
