import 'package:ejercicios/navbar.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';
import 'home.dart';

class Cuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          // color: Colors.black,
          margin: EdgeInsets.only(top: 35),
          height: 60,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment.center,
                child: Text(
                  '''Home''',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 130),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/foto1.jpg"),
                    ),
                    shape: BoxShape.circle),
              ),
            ],
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
            '''Cuenta de Usuario''',
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
            '''Revisa tu progreso diario''',
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
