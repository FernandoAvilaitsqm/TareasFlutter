import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    const AuthIconType? authIconType = AuthIconType.outlined;
    const AuthButtonType? buttonType = AuthButtonType.secondary;
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: 230,
              height: 55,
              margin: EdgeInsets.only(left: 90, top: 120, right: 90),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/img/logo.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Column(
                children: [
                  const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Telefono, correo electrónico o usuario',
                    ),
                  ),
                  const Divider(
                    height: 15,
                    color: Colors.white,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      minWidth: 370.0,
                      height: 60.0,
                      onPressed: () {},
                      color: Colors.blue[800],
                      child: Text('Iniciar Sesion',
                          style: TextStyle(color: Colors.white)),
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
                            'Iniciar Sesion',
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
                    child: FacebookAuthButton(
                      style: const AuthButtonStyle(
                        buttonType: buttonType,
                        iconType: authIconType,
                        iconBackground: Colors.blue,
                        buttonColor: Colors.blue,
                        splashColor: Colors.black12,
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"),
                      ),
                      onPressed: () {
                        // initialiaze the facebook javascript SDK
                        FacebookAuth.instance.webInitialize(
                          appId: "1329834907365798",
                          cookie: true,
                          xfbml: true,
                          version: "v11.0",
                        );
                      },
                    ),
                  ),
                  Container(
                    child: GoogleAuthButton(
                      style: const AuthButtonStyle(
                        buttonType: buttonType,
                        iconType: authIconType,
                        iconBackground: Colors.red,
                        buttonColor: Colors.redAccent,
                        splashColor: Colors.black12,
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"),
                      ),
                      onPressed: () {},
                    ),
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
