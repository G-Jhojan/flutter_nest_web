//en este archivo se va a manejar el estado de la aplicación, es decir, si el usuario existe o no existe, si el usuario está logueado o no está logueado, etc.
//el "part" se usa para que el archivo se pueda dividir en varios archivos, en este caso el usuario_cubit.dart y el usuario_state.dart, pero al final se compilan en un solo archivo. Por el hecho de que el usuario_state.dart es un archivo que se va a usar en varios archivos, se le pone el "part" para que no se compile solo, sino que se compile con el archivo usuario_cubit.dart,
//hay una diferencia entre un part of y un export por que el export es para que se pueda usar en otros archivos, pero el part of es para que se compile con el archivo que tiene el part.

part of 'usuario_cubit.dart';


abstract class UsuarioState{}


 class UsuarioInitial extends UsuarioState {
   //UsuarioInitial();
   final existeUsuario = false;


   @override
  String toString() {
    return 'UsuarioInitial{existeUsuario: $existeUsuario}';
  }
 }

 class UsuarioActivo extends UsuarioState {
   //UsuarioActivo();
   final existeUsuario = true;
   final Usuario usuario;

   UsuarioActivo(this.usuario);
 }
