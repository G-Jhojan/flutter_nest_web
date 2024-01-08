import 'package:flutter/material.dart';
import 'package:flutter_nest/src/presentation/widgets/default_button.dart';
import 'package:flutter_nest/src/presentation/widgets/default_icon_back.dart';
import 'package:flutter_nest/src/presentation/widgets/default_text_field.dart';
import 'package:flutter_nest/src/presentation/widgets/no_color_button.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/img/background1.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            DefaultIconBack(
              left: 80,
              top: 40,
            ),
            Center(
              child: Container(
                //constraints: BoxConstraints(maxWidth: 450, maxHeight: 700),
                width: 475,//MediaQuery.of(context).size.width * 0.45,
                height:MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xB20B191E),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Center(
                    //widthFactor: 2,
                    heightFactor: 1.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add_a_photo_outlined,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          'CREAR CUENTA',
                          style: GoogleFonts.outfit(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                           ),
                         child: DefaultTextField(
                            label: 'Nombre',
                            icon: Icons.person_outline,
                            onChanged: (text) {
                              print('Text: $text');
                            },
                         )
                       ),
                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                          ),
                         child: DefaultTextField(
                            label: 'Apellido',
                            icon: Icons.person,
                            onChanged: (text) {},
                         )
                       ),
                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                          ),
                         child: DefaultTextField(
                            label: 'Correo',
                            icon: Icons.email_outlined,
                            onChanged: (text) {},
                         )
                       ),
                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                          ),
                         child: DefaultTextField(
                            label: 'Contraseña',
                            icon: Icons.lock_outlined,
                            //obscureText: true,
                            onChanged: (text) {},
                         )
                       ),
                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                          ),
                         child: DefaultTextField(
                            label: 'Confirmar Contraseña',
                            icon: Icons.lock,
                            //obscureText: true,
                            onChanged: (text) {},
                         )
                       ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: DefaultButton(
                            text: 'Regístrame',
                            onPressed: (){},
                        )
                      ),
                       Text("¿Ya tienes una cuenta?", style: GoogleFonts.outfit(fontSize: 15, color: Colors.grey)),
                        Container(
                           margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: NoColorButton(
                              text: 'INICIAR SESIÓN',
                              onPressed: (){
                                Navigator.pushNamed(context, 'login');
                              },
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
