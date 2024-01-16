import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/CUBIT/bloc/usuario/usuario_cubit.dart';


class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      //en el body encambio se va a mostrar el estado de la aplicación, es decir, si el usuario existe o no existe, si el usuario está logueado o no está logueado, etc.
      body: BlocBuilder<UsuarioCubit, UsuarioState>(
        builder: (context, state){ // es un builder, este siempre debe de regresar un widget
        print(state);
        if(state is UsuarioInitial){ // si el estado es UsuarioInitial, entonces se va a mostrar el texto de que no hay usuario seleccionado, pero si el estado es UsuarioActivo, entonces se va a mostrar la información del usuario.
          return Center(child: Text('No hay usuario seleccionado'));
        } else{
          return InformacionUsuario();
        }

        },
      ) ,

     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.accessibility_new ),
       onPressed: () => Navigator.pushNamed(context, 'pagina2')
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [

          Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ListTile( title: Text('Nombre: ') ),
          ListTile( title: Text('Edad: ') ),

          Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ListTile( title: Text('Profesion 1') ),
          ListTile( title: Text('Profesion 1') ),
          ListTile( title: Text('Profesion 1') ),

        ],
      ),
    );
  }

}
