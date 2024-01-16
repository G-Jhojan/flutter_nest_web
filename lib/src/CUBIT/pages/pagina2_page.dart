import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

              },
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

              },
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

              },
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) )
            ),

          ],
        )
     ),
   );
  }
}
