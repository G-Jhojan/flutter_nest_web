import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:oktoast/oktoast.dart';
import 'src/presentation/pages/auth/login/login_bloc_cubit.dart';
import 'src/presentation/pages/auth/login/login_page.dart';
import 'src/presentation/pages/auth/register/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/providers/bloc_providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          initialRoute: 'login',
          routes: {
            'login': (context) => const LoginPage(),
            'register': (context) => const RegisterPage(),
          },
        ),
      ),
    );
  }
}
