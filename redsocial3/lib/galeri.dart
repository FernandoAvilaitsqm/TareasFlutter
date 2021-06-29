import 'package:flutter/material.dart';

class galeri extends StatelessWidget {
  String img1 = 'assets/img/foto1.jpg';
  galeri(this.img1);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
      width: 385,
      height: 400,
      margin: EdgeInsets.only(bottom: 90),
      padding: const EdgeInsets.all(50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img1),
        ),
      ),
    );
    return imgCard;
  }
}
