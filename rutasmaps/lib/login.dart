import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:rutasmaps/usuario_m.dart';

import 'home.dart';
class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    const AuthIconType? authIconType = AuthIconType.outlined;
    const AuthButtonType? buttonType = AuthButtonType.secondary;
    String ussername ="";
    String password   ="";
    final txtussername = TextEditingController();
    final txtpassword = TextEditingController();
    void clearText() {
      txtussername.clear();
      txtpassword.clear();
    }
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: 230,
              height: 55,
              margin: EdgeInsets.only(left: 90, top: 100, right: 90),
              alignment: Alignment.center,
              child: Text('Inicio de Sesion',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),

            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Column(
                children: [
                  TextField(
                    controller: txtussername,
                    onChanged: (texto) {
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Telefono, correo electrónico o usuario',
                    ),
                  ),
                  const Divider(
                    height: 15,
                    color: Colors.white,
                  ),
                  TextField(
                    obscureText: true,
                    controller: txtpassword,
                    onChanged: (texto) {

                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                  Container(
                    child: GoogleAuthButton(
                        style: const AuthButtonStyle(
                          iconBackground: Colors.white,
                          buttonColor: Colors.blueGrey,
                          splashColor: Colors.redAccent,
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Roboto"),
                        ),

                        onPressed: () {
                          ussername = txtussername.text;
                          password = txtpassword.text;
                          if (ussername.isEmpty && password.isEmpty) {
                            AlertDialog alert = AlertDialog(
                              title: Text('Campos vacios'),
                              content: Text(
                                  "Bro no puedes dejar campos vacios, ayude llenando"),
                              actions: [
                                MaterialButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                });
                          } else {
                            if (ussername == "admin" && password == "admin") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                              //Usuario_m(ussername, password);
                              clearText();
                            } else {
                              AlertDialog alert = AlertDialog(
                                title: Text('Error al iniciar sesion'),
                                content: Text(
                                    "El usuario o la contraseña son datos erroneos"),
                                actions: [
                                  MaterialButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      clearText();
                                    },
                                  )
                                ],
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  });
                            }
                          }
                        },
                        text: 'Inicia con Google'
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 15),
                        child: Text(
                          '''¿Olvidaste los datos de inicio de sesion?''',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {},
                          child: Text(
                            'Ayuda',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 165,
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 5, right: 5),
                        child: Text(
                          '''O''',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        width: 165,
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 100),
                        child: Text(
                          '''¿No tines cuenta?''',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {},
                          child: Text(
                            'Registrate',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
