import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/presentation/pages/auth/register/register_bloc_cubit.dart';
import 'package:flutter_nest/src/presentation/widgets/default_button.dart';
import 'package:flutter_nest/src/presentation/widgets/default_icon_back.dart';
import 'package:flutter_nest/src/presentation/widgets/default_text_field.dart';
import 'package:flutter_nest/src/presentation/widgets/no_color_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  RegisterBlocCubit? _registerBlocCubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _registerBlocCubit!.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {

    _registerBlocCubit = BlocProvider.of<RegisterBlocCubit>(context, listen : false);

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
                          Icons.person_add_rounded,
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
                         child: StreamBuilder(
                           stream: _registerBlocCubit?.nameStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                label: 'Nombre',
                                icon: Icons.person_outline,
                                onChanged: (text) {
                                  _registerBlocCubit?.changeName(text);
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
                           stream: _registerBlocCubit?.lastNameStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                label: 'Apellido',
                                icon: Icons.person,
                                onChanged: (text) {
                                  _registerBlocCubit?.changeLastName(text);
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
                           stream: _registerBlocCubit?.emailStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                label: 'Correo',
                                icon: Icons.email_outlined,
                                onChanged: (text) {
                                  _registerBlocCubit?.changeEmail(text);
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
                           stream: _registerBlocCubit?.passwordStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                label: 'Contraseña',
                                icon: Icons.lock_outlined,
                                onChanged: (text) {
                                  _registerBlocCubit?.changePassword(text);
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
                           stream: _registerBlocCubit?.confirmPasswordStream,
                           builder: (context, snapshot) {
                             return DefaultTextField(
                                label: 'Confirmar Contraseña',
                                icon: Icons.lock,
                                onChanged: (text) {
                                  _registerBlocCubit?.changeConfirmPassword(text);
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
                          stream: _registerBlocCubit?.validateForm,
                          builder: (context, snapshot) {
                            return OKToast(
                              child: DefaultButton(
                                  text: 'Regístrame',
                                  onPressed: (){
                                    if(snapshot.hasData){
                                      _registerBlocCubit?.register();
                                    } else {
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
