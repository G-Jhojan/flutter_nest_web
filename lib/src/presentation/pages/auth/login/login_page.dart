import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        //color: Colors.white,
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
            Center(
              child: Container(
                //constraints: BoxConstraints(maxWidth: 450, maxHeight: 700),
                width: 450,//MediaQuery.of(context).size.width * 0.45,
                height:MediaQuery.of(context).size.height * 0.55,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.black,
                    ),
                    Text(
                      '¡BIENVENIDO!',
                      style: GoogleFonts.outfit(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                   Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                     child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelStyle: GoogleFonts.outfit(color: Colors.white),
                        hintText: 'Correo',
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        label: Text('Correo',style: TextStyle(color: Colors.white)),
                        suffixIcon: Icon(Icons.email_outlined, color: Colors.white,),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder( // Añade esta línea
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                   ),
                   Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                     child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelStyle: GoogleFonts.outfit(color: Colors.white),
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        label: Text('Contraseña',style: TextStyle(color: Colors.white)),
                        suffixIcon: Icon(Icons.lock_outlined, color: Colors.white,),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder( // Añade esta línea
                          borderSide: BorderSide(color:Colors.white),
                        ),
                      ),
                    ),
                   ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0x72A5B0BE),
                          backgroundColor: Color.fromRGBO(128, 0, 32, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child:  Text('INICIAR SESIÓN', style: GoogleFonts.outfit(fontSize: 15, color: Colors.white))
                      ),
                  ),
                   Text("¿No tienes cuenta?", style: GoogleFonts.outfit(fontSize: 15, color: Colors.grey)),
                    Container(
                       margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Color.fromRGBO(128, 0, 32, 100)),
                          onPressed: () {},
                          child:  Text('REGÍSTRATE', style: GoogleFonts.outfit(fontSize: 15, fontWeight: FontWeight.w600, color: Color.fromRGBO(228, 102, 124, 100))),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
