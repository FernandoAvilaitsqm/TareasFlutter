import 'package:flutter/material.dart';
import 'package:redsocial3/navbar.dart';
import 'navbar.dart';

class ImgGalery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300.0,
      child: ListView(
        //padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          navbar('assets/img/foto1.jpg'),
          navbar('assets/img/foto2.jpg'),
          navbar('assets/img/foto3.jpg'),
          navbar('assets/img/foto4.jpg'),
          navbar('assets/img/foto5.jpg'),
        ],
      ),
    );
  }
}
