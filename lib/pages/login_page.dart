import 'package:flutter/material.dart';

import 'package:realchat/widget/custom_input.dart';
import 'package:realchat/widget/custom_label.dart';
import 'package:realchat/widget/custom_logo.dart';
import 'package:realchat/widget/boton_azul.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    titulo: 'Messenger',
                  ),
                  _Form(),
                  Label(
                    ruta: 'register',
                    titulo: '¿No tienes cuenta?',
                    subTitulo: '¡Crea una cuenta ahora!',
                  ),
                  Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPasswords: true,
          ),
          BotonAzul(
            text: 'ENTRAR',
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),
        ],
      ),
    );
    //
    // CustomInput(
    //   icon: Icons.mail_outline,
    //   placeholder: 'Correo',
    //   keyboardType: TextInputType.emailAddress,
    //   textController: emailCtrl,
    // ),

    //TODO: Crear Botón
    // ElevatedButton(
    // onPressed: () {
    // print(emailCtrl.text);
    // }, child: null,

    // )}
  }
}
