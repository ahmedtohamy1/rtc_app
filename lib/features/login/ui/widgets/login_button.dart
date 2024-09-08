import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rtc_app/features/login/view_model/login_cubit.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String password;
  const LoginButton({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              backgroundColor: const Color(0xFF353A48),
            ),
            onPressed: () {
              BlocProvider.of<LoginCubit>(context).login(email, password);
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )));
  }
}
