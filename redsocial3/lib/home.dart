import 'package:flutter/material.dart';
import 'navbar.dart';
import 'gradiente.dart';
import 'imgGalery.dart';
import 'package:redsocial3/imggaleria.dart';
import 'imggaleria.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //fit: StackFit.expand,
      children: [
        Gradiente(),
        Container(
            height: 100,
            margin: EdgeInsets.only(top: 20.0, bottom: 350),
            child: ImgGalery()),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              border: new Border.all(color: Colors.white, width: 15),
            ),
            height: 600,
            margin: EdgeInsets.only(top: 120.0),
            child: ImgGaleria()),
        Container(
            height: 150,
            width: 410,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 540.0),
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 70, left: 20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Lana Rhoades',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50, right: 10),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Junio 13, 2021',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 70, left: 80),
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black54,
                        size: 30,
                      ),
                      Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.black54,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
