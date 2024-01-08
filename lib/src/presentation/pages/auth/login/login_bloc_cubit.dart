import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/presentation/pages/auth/login/login_bloc.dart';
import 'package:rxdart/rxdart.dart';

class LoginBlocCubit extends Cubit<LoginBloc>{

  LoginBlocCubit() : super(LoginInitial());

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();


  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  void changeEmail(String email) => _emailController.sink.add(email);
  void changePassword(String email) => _passwordController.sink.add(email);

  void login(){
    print('Email: ${_emailController.value}');
    print('Password: ${_passwordController.value}');
  }

}
