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
//import 'package:flutter/material.dart';
//import 'package:flutter_nest/src/PROVIDER/config/theme/app_theme.dart';
//import 'package:flutter_nest/src/PROVIDER/presentation/layouts/auth/auth_layout.dart';
//
//import 'src/PROVIDER/config/router/router.dart';
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


//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_nest/src/CUBIT/bloc/usuario/usuario_cubit.dart';
//import 'src/CUBIT/pages/pagina1_page.dart';
//import 'src/CUBIT/pages/pagina2_page.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return MultiBlocProvider(
//      providers: [
//        // en esta parte lo que sucede es: se crea un provider, se crea un cubit, y se le pasa al provider el cubit que se creó, y se le pasa el tipo de cubit que es, en este caso es el UsuarioCubit, y se le pasa el tipo de estado que es, en este caso es el UsuarioState.
//        BlocProvider(create: ( _ ) => UsuarioCubit(),),
//      ],
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        title: 'Material App',
//        initialRoute: 'pagina1',
//        routes: {
//          'pagina1': ( _ ) => Pagina1Page(),
//          'pagina2': ( _ ) => Pagina2Page(),
//        },
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
