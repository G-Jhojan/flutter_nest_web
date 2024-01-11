import 'package:fluro/fluro.dart';
import 'package:flutter_nest/src/PROVIDER/presentation/views/login/login_view.dart';
import 'package:flutter_nest/src/PROVIDER/presentation/views/register/register_view.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    return const RegisterView();
  });


}
