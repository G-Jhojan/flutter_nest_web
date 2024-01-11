import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //peticion HTTP
    _token = 'warcorporation.nukanchikshimi.token';

    print('almacenar JWT:$_token');

    // una vez validado navegamos hacia el dashboard

    notifyListeners(); //
  }
}
