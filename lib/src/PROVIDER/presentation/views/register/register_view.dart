import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nest/src/PROVIDER/config/providers/register_form_provider.dart';
import 'package:flutter_nest/src/PROVIDER/config/router/router.dart';
import 'package:flutter_nest/src/PROVIDER/config/ui/buttons/custom_outlined_button.dart';
import 'package:flutter_nest/src/PROVIDER/config/ui/buttons/link_text.dart';
import 'package:flutter_nest/src/PROVIDER/config/ui/inputs/custom_inputs.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterFormProvider(),
        child: Builder(builder: (context) {
          final registerFromProvider =
              Provider.of<RegisterFormProvider>(context, listen: false);

          return Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            child: Center(
                child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                  key: registerFromProvider.formKey,
                  child: Column(
                    children: [
                      //email
                      TextFormField(
                        onChanged: (value) => registerFromProvider.name = value,
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'El nombre es obligatorio';
                              return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration:
                              CustomInputsDecoration().authInputDecoration(
                            hint: 'Ingrese su Nombre',
                            label: 'Nombre',
                            icon: Icons.person_outline_sharp,
                          )),

                      const SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        onChanged: (value) => registerFromProvider.lastname = value,
                           validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'El apellido es obligatorio';
                              return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration:
                              CustomInputsDecoration().authInputDecoration(
                            hint: 'Ingrese su Apellido',
                            label: 'Apellido',
                            icon: Icons.person_pin,
                          )),

                      const SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                         onChanged: (value) => registerFromProvider.email = value,
                           validator: (value) {
                        if(!EmailValidator.validate(value ?? '')) return 'Correo no válido';
                        return null;
                      },
                          style: const TextStyle(color: Colors.white),
                          decoration:
                              CustomInputsDecoration().authInputDecoration(
                            hint: 'Ingrese su correo Electrónico',
                            label: 'Correo',
                            icon: Icons.email_outlined,
                          )),

                      const SizedBox(
                        height: 20,
                      ),
                      //PASSWORD
                      TextFormField(
                         onChanged: (value) => registerFromProvider.password = value,
                          validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Ingrese su Contaseña';
                        if (value.length < 6)
                          return 'La contraseña debe ser de 6 caracteres';
                        return null; //significa  que el campo es valido
                      },
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration:
                              CustomInputsDecoration().authInputDecoration(
                            hint: 'Mínimo 6 caracteres',
                            label: 'Contraseña',
                            icon: Icons.lock_outline,
                          )),

                      const SizedBox(
                        height: 30,
                      ),
                      CustomOutlinedButton(
                        onPressed: () {
                          registerFromProvider.validateForm();
                        },
                        text: 'Crear Cuenta',
                        //color: Colors.red,
                        //isFilled: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      LinkText(
                        text: 'Regresar al Login',
                        onPressed: () {
                          Navigator.pushNamed(context, Flurorouter.loginRoute);
                        },
                      )
                    ],
                  )),
            )),
          );
        }));
  }
}
