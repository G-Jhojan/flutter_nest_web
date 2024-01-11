import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String name = '';
  String lastname = '';
  String email = '';
  String password = '';

    validateForm(){
    if(formKey.currentState!.validate()){
      print('Formulario Válido ... Login ');
      print('$email === $password === $name === $lastname');
    } else {
      print('Form not valid..');
    }
  }


}
