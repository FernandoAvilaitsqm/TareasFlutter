import 'package:examenp2/imggaleri.dart';
import 'package:flutter/material.dart';
import 'care.dart';
import 'botonink.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(children: <Widget>[
        Container(
          height: 35,
          width: 230,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Text(
            "Welcome To, ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          height: 50,
          width: 230,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(),
          child: Text(
            "Meditation Care ",
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontFamily: 'newsreader'),
          ),
        ),
        ImgGaleri(),
        Container(
          height: 65,
          width: 200,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(
            top: 45,
            left: 30,
          ),
          child: Text(
            '''Lorem iposum dolor sit amet, consectatur 
      adipiscing elit. Orci orci suscipit ''',
            style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Botonink(
            text: "Relax Your Mind",
            heightC: 60,
            widthC: 55,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Care()));
            }),
      ]),
    ));
  }
}
