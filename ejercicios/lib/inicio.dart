import 'package:ejercicios/navbar.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';
import 'home.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: <Color>[Color(0xffeE1E1E1), Color(0xffeB2B0B0)]),
          ),
          margin: EdgeInsets.only(bottom: 380, top: 23),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/hard.png"),
          ),
        ),
        Container(
          height: 65,
          width: 250,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
            top: 350,
            left: 80,
          ),
          child: Text(
            '''De los mejores Gimnasios''',
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          height: 65,
          width: 250,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
            top: 370,
            left: 80,
          ),
          child: Text(
            '''Ejercicio Diario para tonificar''',
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontFamily: 'newsreader'),
          ),
        ),
        Container(
          height: 60,
          width: 450,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 470, left: 80, right: 60),
        ),
        Container(
          margin: EdgeInsets.only(right: 20, top: 30),
          child: MaterialButton(
              shape: CircleBorder(),
              minWidth: 30,
              height: 30.0,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              color: Color(0xffeFFE0DA),
              child: Icon(Icons.arrow_back, color: Color(0xffeF6B6AA))),
        ),
      ],
    ));
  }
}
