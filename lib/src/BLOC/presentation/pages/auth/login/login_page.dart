import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/BLOC/presentation/widgets/default_button.dart';
import 'package:flutter_nest/src/BLOC/presentation/widgets/default_text_field.dart';
import 'package:flutter_nest/src/BLOC/presentation/widgets/no_color_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';

import 'login_bloc_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginBlocCubit? _loginBlocCubit;

  @override
  void initState() {// se jecuta una sola vez cuando carga la pantalla
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loginBlocCubit?.dispose();
    });

  }

  @override
  Widget build(BuildContext context) {

    _loginBlocCubit = BlocProvider.of<LoginBlocCubit>(context, listen: false);

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
            Center(
              child: Container(
                //constraints: BoxConstraints(maxWidth: 450, maxHeight: 700),
                width: 450,//MediaQuery.of(context).size.width * 0.45,
                height:MediaQuery.of(context).size.height * 0.56,
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
                    heightFactor: 1.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                           CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/img/logo_amawta.jpg'),
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
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                           ),
                         child: StreamBuilder(
                           stream: _loginBlocCubit?.emailStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                errorText: snapshot.error?.toString(),
                                label: 'Correo',
                                icon: Icons.email_outlined,
                                onChanged: (text) {
                                  _loginBlocCubit?.changeEmail(text);
                                  //print('Text: $text');
                                },
                             );
                           }
                         )
                       ),
                       Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10
                          ),
                         child: StreamBuilder(
                           stream: _loginBlocCubit?.passwordStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                errorText: snapshot.error?.toString(),
                                label: 'Contraseña',
                                icon: Icons.lock_outlined,
                                obscureText: true,
                                onChanged: (text) {
                                  _loginBlocCubit?.changePassword(text);
                                },
                             );
                           }
                         )
                       ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: StreamBuilder(
                          stream: _loginBlocCubit?.validateForm,
                          builder: (context, snapshot) {
                            return OKToast(
                              child: DefaultButton(
                                  text: 'Iniciar Sesión',
                                  onPressed: (){
                                  if(snapshot.hasData){
                                    _loginBlocCubit?.login();
                                  } else{
                                   showToast(
                                      "¡Campos no validos!",
                                      duration: Duration(seconds: 2),
                                      position: ToastPosition.bottom,
                                      backgroundColor: Colors.white,
                                      radius: 10.0,
                                      textStyle: GoogleFonts.robotoCondensed(fontSize: 18.0),
                                    );
                                  }
                                },
                              ),
                            );
                          }
                        )
                      ),
                       Text("¿No tienes cuenta?",
                       style: GoogleFonts.outfit(
                        fontSize: 15,
                        color: Colors.grey)),
                        Container(
                           margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: NoColorButton(
                              text: 'CREA UNA CUENTA',
                              onPressed: (){
                              Navigator.pushNamed(context, 'register');
                            }
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
