import 'package:flutter/material.dart';

class ImgCard extends StatelessWidget {
  String img1 = 'assets/img/foto1.jpg';
  double wid = 120.0;

  ImgCard(this.img1, this.wid);
  @override
  Widget build(BuildContext context) {
    final imgCard = Container(
      width: wid,
      padding: const EdgeInsets.all(50),
      margin: EdgeInsets.only(right: 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img1),
        ),
      ),
    );
    return imgCard;
  }
}
