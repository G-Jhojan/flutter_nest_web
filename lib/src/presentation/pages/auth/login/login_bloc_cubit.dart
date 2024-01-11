import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/presentation/pages/auth/login/login_bloc_state.dart';
import 'package:rxdart/rxdart.dart';

class LoginBlocCubit extends Cubit<LoginBlocState>{

  LoginBlocCubit() : super(LoginInitial());

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  void changeEmail(String email){
    if(email.isNotEmpty && email.length < 6){
      _emailController.sink.addError('¡Email no valido! : Ingresa un correo válido');
    } else {
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

  Stream <bool> get validateForm => Rx.combineLatest2(emailStream, passwordStream, (a, b) => true);

  void dispose(){ // se va a ejecutar cuando pasemos a otra pantalla, y la pantalla actual se destruya.
    changeEmail('');
    changePassword('');
  }

  void login(){
    print('Email: ${_emailController.value}');
    print('Password: ${_passwordController.value}');
  }

}
