import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:proyectotiktok/navbar.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    const AuthIconType? authIconType = AuthIconType.outlined;
    const AuthButtonType? buttonType = AuthButtonType.secondary;
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80, left: 55),
              child: Text(
                '''Iniciar sesión en Tik Tok''',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 35, right: 35),
              width: 100,
              child: Text(
                '''Gestiona tu cuenta, lee notificaciones, comenta videos y mas.''',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Column(
                children: [
                  const Divider(),
                  FacebookAuthButton(
                    onPressed: () {
                      Dialogs.showLoadingDialog(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    style: const AuthButtonStyle(
                        iconType: authIconType,
                        buttonColor: Colors.white,
                        elevation: 1,
                        iconSize: 20,
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                    text: '   Continuar con Facebook  ',
                  ),
                  const Divider(),
                  GoogleAuthButton(
                    onPressed: () {},
                    style: const AuthButtonStyle(
                        iconType: authIconType,
                        buttonColor: Colors.white,
                        elevation: 1,
                        iconSize: 20,
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                    text: '     Continuar con Google    ',
                  ),
                  const Divider(),
                  TwitterAuthButton(
                    onPressed: () {},
                    style: const AuthButtonStyle(
                        buttonType: buttonType,
                        buttonColor: Colors.white,
                        elevation: 1,
                        iconSize: 20,
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                    text: '     Continuar con Twitter    ',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 216),
              height: 65,
              color: Colors.black12,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Text(
                      '''¿No tienes cuenta?''',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    child: Text(
                      ''' Registrarse''',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.redAccent[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class Dialogs {
  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  backgroundColor: Colors.black54,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please Wait....",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ]),
                    )
                  ]));
        });
  }
}
