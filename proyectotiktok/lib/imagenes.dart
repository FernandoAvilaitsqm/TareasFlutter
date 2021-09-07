import 'package:flutter/material.dart';
import 'package:proyectotiktok/navbar.dart';
import 'home.dart';
import 'imgcard.dart';
import 'login.dart';

// ignore: must_be_immutable
class Imagenes extends StatefulWidget {
  String img1 = '12345';
  double wid = 120.0;
  double heig = 120.0;
  Imagenes(this.img1, this.heig, this.wid);

  @override
  _ImagenesState createState() => _ImagenesState();
}

class _ImagenesState extends State<Imagenes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heig,
      child: ListView(
        //padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard('assets/img/' + widget.img1[0] + '.png', widget.wid),
          ImgCard('assets/img/' + widget.img1[1] + '.png', widget.wid),
          ImgCard('assets/img/' + widget.img1[2] + '.png', widget.wid),
          ImgCard('assets/img/' + widget.img1[3] + '.png', widget.wid),
          ImgCard('assets/img/' + widget.img1[4] + '.png', widget.wid),
        ],
      ),
    );
  }
}
