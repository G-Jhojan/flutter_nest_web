//MOBILE
//import 'package:flutter/material.dart';
//import 'package:oktoast/oktoast.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'src/BLOC/presentation/pages/auth/login/login_page.dart';
//import 'src/BLOC/presentation/pages/auth/register/register_page.dart';
//import 'src/BLOC/providers/bloc_providers.dart';
//
//void main() => runApp(const MyApp());
//
//class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return OKToast(
//      child: MultiBlocProvider(
//        providers: blocProviders,
//        child: MaterialApp(
//          debugShowCheckedModeBanner: false,
//          theme: ThemeData(
//            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//            useMaterial3: true,
//          ),
//          initialRoute: 'login',
//          routes: {
//            'login': (context) => const LoginPage(),
//            'register': (context) => const RegisterPage(),
//          },
//        ),
//      ),
//    );
//  }
//}
//

//WEB
import 'package:flutter/material.dart';
import 'package:flutter_nest/src/PROVIDER/config/theme/app_theme.dart';
import 'package:flutter_nest/src/PROVIDER/presentation/layouts/auth/auth_layout.dart';

import 'src/PROVIDER/config/router/router.dart';
void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      builder: (context, child) {
        return  AuthLayout(child: child!,);
      },
    );
  }
}
