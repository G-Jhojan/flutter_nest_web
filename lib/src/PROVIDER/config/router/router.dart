import 'package:fluro/fluro.dart';

import 'admin_handlers.dart';
import 'no_page_found_handler.dart';



class Flurorouter {
  static final FluroRouter router = FluroRouter();

  //root router
  static String rootRoute = '/';

  //auth router
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';

  //DashBorad
  static String dashboardRoute = 'auth/login';

  static void configureRoutes() {
    router.define(rootRoute,        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(loginRoute,       handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(registerRoute,    handler: AdminHandlers.register, transitionType: TransitionType.none);
   // router.define(registerRoute, handler: handler);

  //404 PAGINA NO ENCONTRADA
   router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }

}
