//import 'package:flutter/material.dart';
//import 'package:kichwa_web_app/config/router/router.dart';
//
//import 'config/theme/app_theme.dart';
//import 'presentation/layouts/auth/auth_layout.dart';
//
//void main() {
//  Flurorouter.configureRoutes();
//  runApp(const MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: AppTheme(selectedColor: 0).getTheme(),
//      initialRoute: '/',
//      onGenerateRoute: Flurorouter.router.generator,
//      builder: (context, child) {
//        return  AuthLayout(child: child!,);
//      },
//    );
//  }
//}
//
