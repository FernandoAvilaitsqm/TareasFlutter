import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: <Color>[Color(0xffeF478F8), Color(0xffeFDD6FE)]),
          ),
          height: 250,
          width: 250,
          margin: EdgeInsets.only(bottom: 255),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.cover,
            color: Colors.blueAccent[900],
            image: AssetImage("assets/img/helecho.png"),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 250),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Helecho''',
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 300),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''\$22''',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 255, top: 290),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerRight,
          constraints: BoxConstraints.expand(),
          child: Row(
            children: [
              Icon(
                Icons.star_sharp,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star_sharp,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star_sharp,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star_half,
                color: Colors.yellow,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 255),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerRight,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Calificar''',
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 440),
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Bueno para tu salud, un estudio de la NASA identificó el helecho como una de las plantas de purificación de aire superiores para eliminar los productos químicos nocivos del aire en tu hogar''',
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 540),
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.bottomCenter,
          constraints: BoxConstraints.expand(),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minWidth: 370.0,
            height: 60.0,
            onPressed: () {},
            color: Colors.blue[800],
            child: Text('Comprar ya', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ));
  }
}
