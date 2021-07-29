import 'package:examenp2/iconos.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Care extends StatelessWidget {
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
                colors: <Color>[Color(0xffeFED5CF), Color(0xffeFED2CB)]),
          ),
          margin: EdgeInsets.only(bottom: 380, top: 23),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/foto1.png"),
          ),
        ),
        Container(
          height: 65,
          width: 250,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
            top: 320,
            left: 80,
          ),
          child: Text(
            '''Relax your Mind''',
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
            top: 345,
            left: 80,
          ),
          child: Text(
            '''Day Episode''',
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontFamily: 'newsreader'),
          ),
        ),
        Container(
          height: 60,
          width: 450,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 470, left: 80, right: 60),
          child: Iconos(),
        ),
        Container(
          margin: EdgeInsets.only(right: 20, top: 30),
          child: MaterialButton(
              shape: CircleBorder(),
              minWidth: 30,
              height: 30.0,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              color: Color(0xffeFFE0DA),
              child: Icon(Icons.arrow_back, color: Color(0xffeF6B6AA))),
        ),
      ],
    ));
  }
}
