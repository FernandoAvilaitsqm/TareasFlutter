import 'package:flutter/material.dart';

class Botonink extends StatefulWidget {
  final VoidCallback onPressed;
  double heightC = 0.0;
  double widthC = 0.0;
  final String text;
  Botonink(
      {Key? key,
      required this.text,
      required this.heightC,
      required this.widthC,
      required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _Botonink();
  }
}

class _Botonink extends State<Botonink> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 70, left: 100, right: 100),
        height: widget.heightC,
        width: widget.widthC,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
                colors: [Color(0xFFFA4646), Color(0xFFFC7979)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.7])),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
