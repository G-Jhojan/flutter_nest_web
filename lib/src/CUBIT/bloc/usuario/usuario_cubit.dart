// este archivo es el que va a cambiar de estado, el que realiza peticiones, el de la lógica.
//Tanto el cubit como el state son clases abstractas, por lo que no se pueden instanciar.
//el "part" se usa para que el archivo se pueda dividir en varios archivos, en este caso el usuario_cubit.dart y el usuario_state.dart, pero al final se compilan en un solo archivo.
//el "part of" se usa para que el archivo se pueda dividir en varios archivos, en este caso el usuario_cubit.dart y el usuario_state.dart, pero al final se compilan en un solo archivo.

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/CUBIT/models/usuario.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState>{
  UsuarioCubit() : super(UsuarioInitial());

}
