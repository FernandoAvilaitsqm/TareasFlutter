import 'package:flutter/material.dart';
import 'package:redsocial3/galeri.dart';
import 'package:redsocial3/galeri.dart';
import 'galeri.dart';

class ImgGaleria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300.0,
      child: ListView(
        //padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          galeri('assets/img/foto1.jpg'),
          galeri('assets/img/foto2.jpg'),
          galeri('assets/img/foto3.jpg'),
          galeri('assets/img/foto4.jpg'),
          galeri('assets/img/foto5.jpg'),
        ],
      ),
    );
  }
}
