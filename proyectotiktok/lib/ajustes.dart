import 'package:flutter/material.dart';

import 'login.dart';
import 'navbar.dart';

class Ajustes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.perm_identity_rounded,
                        size: 30,
                      ),
                      Text(
                        'Mi cuenta',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 165),
                        child: MaterialButton(
                            minWidth: 60,
                            height: 30,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            color: Colors.redAccent[700],
                            child: Text(
                              'Registrarse',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 30,
                      ),
                      Text(
                        'Herramientas de creador',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Contenido y actividad',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.language_sharp,
                        size: 30,
                      ),
                      Text(
                        'Idioma de la aplicacíon',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Text(
                          'Español',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.video_camera_back_outlined,
                        size: 30,
                      ),
                      Text(
                        'Preferencias de contenido',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Cache y Datos Moviles',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                    ),
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_sharp,
                        size: 30,
                      ),
                      Text(
                        'Libera espacio',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.data_saver_on_sharp,
                        size: 30,
                      ),
                      Text(
                        'Ahorro de datos',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle_outlined,
                        size: 30,
                      ),
                      Text(
                        'Fondo de pantalla',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Ayuda',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 30,
                      ),
                      Text(
                        'Informar de un problema',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        size: 30,
                      ),
                      Text(
                        'Centro de ayuda',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.health_and_safety_outlined,
                        size: 30,
                      ),
                      Text(
                        'Centro de seguridad',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Acerca De',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline_outlined,
                        size: 30,
                      ),
                      Text(
                        'Normas de la comunidad',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.book_outlined,
                        size: 30,
                      ),
                      Text(
                        'Terminos del servicio',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.restore_page_outlined,
                        size: 30,
                      ),
                      Text(
                        'Politicas de privacidad',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.account_box_sharp,
                        size: 30,
                      ),
                      Text(
                        'Politica de derechos de autor',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  Text(
                    'v20.9.4(5576575486)',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: MaterialButton(
                        shape: CircleBorder(),
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        color: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  Text(
                    'Ajustes y Privacidad',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
