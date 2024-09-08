import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rtc_app/core/api/my_api.dart';
import 'package:rtc_app/features/login/data/repos/login_repo.dart';
import 'package:rtc_app/features/login/data/repos/login_repo_impl.dart';
import 'package:rtc_app/features/login/ui/login_screen.dart';
import 'package:rtc_app/features/login/view_model/login_cubit.dart';

class MyApp extends StatelessWidget {
  static MyApi myApi = MyApi();
  static LoginRepo loginRepo = LoginRepoImpl(myApi);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => LoginCubit(loginRepo),
          child: const LoginScreen(),
        ));
  }
}
