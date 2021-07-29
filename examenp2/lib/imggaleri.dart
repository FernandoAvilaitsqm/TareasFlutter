import 'package:examenp2/imgcard.dart';
import 'package:flutter/material.dart';

class ImgGaleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 440,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Imgcard('assets/img/foto1.jpg'),
          Imgcard('assets/img/foto2.jpg'),
          Imgcard('assets/img/foto3.jpg'),
          Imgcard('assets/img/foto4.jpg'),
          Imgcard('assets/img/foto5.jpg'),
        ],
      ),
    );
  }
}
