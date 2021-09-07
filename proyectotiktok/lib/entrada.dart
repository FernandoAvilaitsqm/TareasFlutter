import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:proyectotiktok/ajustes.dart';
import 'package:proyectotiktok/login.dart';

import 'package:proyectotiktok/navbar.dart';

class Entrada extends StatelessWidget {
  String titulo = 'j';
  String concepto = 'j';
  Color col = Colors.black;
  IconData ico = Icons.ac_unit_sharp;
  Entrada(this.titulo, this.concepto, this.ico, this.col);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 145),
                  alignment: Alignment.center,
                  child: Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 40),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Ajustes()));
                      },
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: col,
                      )),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 130),
              child: Icon(
                ico,
                size: 90,
                color: Colors.black45,
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                concepto,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(right: 70, left: 70),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  color: Colors.redAccent[700],
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
