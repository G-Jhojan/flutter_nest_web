import 'package:fluro/fluro.dart';
import 'package:flutter_nest/src/PROVIDER/presentation/views/404/no_page_found_view.dart';



class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const NoPageFoundView();
  });
}
