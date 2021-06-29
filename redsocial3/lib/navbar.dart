import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  String img1 = 'assets/img/foto1.jpg';
  navbar(this.img1);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.only(right: 10, left: 15),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: new Border.all(color: Color(0xffe363a4d), width: 4),
            image: DecorationImage(
              //fit: BoxFit.cover,
              image: AssetImage(img1),
            ),
            shape: BoxShape.circle));
    return imgCard;
  }
}
