import 'package:flutter/material.dart';

class Imgcard extends StatelessWidget {
  String img1 = 'assets/img/foto1.jpg';
  Imgcard(this.img1);
  @override
  Widget build(BuildContext context) {
    final ImgCard = Container(
      height: 70,
      width: 440,
      margin: EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img1),
        ),
      ),
    );
    return ImgCard;
  }
}
