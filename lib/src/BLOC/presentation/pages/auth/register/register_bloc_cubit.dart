import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'register_bloc_state.dart';

class RegisterBlocCubit extends Cubit<RegisterBlocState>{

  RegisterBlocCubit() : super(RegisterInitial());

  final _nameController            = BehaviorSubject<String>();
  final _lastNameController        = BehaviorSubject<String>();
  final _emailController           = BehaviorSubject<String>();
  final _passwordController        = BehaviorSubject<String>();
  final _confirmPasswordController = BehaviorSubject<String>();

  Stream<String> get nameStream            => _nameController.stream;
  Stream<String> get lastNameStream        => _lastNameController.stream;
  Stream<String> get emailStream           => _emailController.stream;
  Stream<String> get passwordStream        => _passwordController.stream;
  Stream<String> get confirmPasswordStream => _confirmPasswordController.stream;

  void changeName(String name){
    if(name.isNotEmpty && name.length < 4){
      _nameController.sink.addError('Nombre no valido! : Debe ser mayor a 4caracteres');
    } else {
        _nameController.sink.add(name);
    }
  }
  void changeLastName(String lastName){
    if(lastName.isNotEmpty && lastName.length < 4){
      _lastNameController.sink.addError('Apellido no valido! : Debe ser mayor a 4 caracteres');
    } else {
        _lastNameController.sink.add(lastName);
    }
  }
  void changeEmail(String email) {
      bool emailFormatValid =
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
      if (email.isNotEmpty && email.length < 5) {
        _emailController.sink.addError('Al menos 5 caracteres');
      }
      else if(email.isNotEmpty && !emailFormatValid) {
        _emailController.sink.addError('El email no es valido');
      }
      else {
        _emailController.sink.add(email);
      }
    }
  void changePassword(String password){
    if(password.isNotEmpty && password.length < 6){
     _passwordController.sink.addError('La contraseña debe ser mayor a 6 caracteres');
    } else {
      _passwordController.sink.add(password);
    }
  }
  void changeConfirmPassword(String confirmPassword){
    if(confirmPassword.isNotEmpty && confirmPassword.length < 6){
     _confirmPasswordController.sink.addError('Al menos 6 caracteres');
    }
    else if(confirmPassword != _passwordController.value) {
     _confirmPasswordController.sink.addError('Las contraseñas no coinciden');
    }
    else {
    _confirmPasswordController.sink.add(confirmPassword);
    }
  }

  Stream <bool> get validateForm => Rx.combineLatest5(
    nameStream,
    lastNameStream,
    emailStream,
    passwordStream,
    confirmPasswordStream,
    (a, b, c, d, e) => true);


  void dispose(){ // se va a ejecutar cuando pasemos a otra pantalla, y la pantalla actual se destruya.
    changeName('');
    changeLastName('');
    changeEmail('');
    changePassword('');
    changeConfirmPassword('');
  }

  void register(){
    print('Name: ${_nameController.value}');
    print('LastName: ${_lastNameController.value}');
    print('Email: ${_emailController.value}');
    print('Password: ${_passwordController.value}');
    print('Confirm Password: ${_confirmPasswordController.value}');
  }

}
