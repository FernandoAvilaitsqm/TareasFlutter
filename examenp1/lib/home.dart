import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //fit: StackFit.expand,
      children: [
        Container(
          width: 411,
          decoration: BoxDecoration(),
          margin: EdgeInsets.only(top: 25),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.cover,
            color: Colors.blueAccent[900],
            image: AssetImage("assets/img/fondo.jpg"),
          ),
        ),
        Container(
          width: 50,
          margin: EdgeInsets.only(top: 210, right: 150, left: 50),
          //padding: const EdgeInsets.all(30.0),
          alignment: Alignment.topLeft,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Top 10 mejores aventuras en New York''',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          width: 50,
          margin: EdgeInsets.only(top: 80, left: 90),
          //padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Methila Janse''',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          width: 50,
          margin: EdgeInsets.only(top: 120, left: 90),
          //padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''June 18 Min Road''',
            style: TextStyle(
                color: Colors.black38,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          width: 50,
          margin: EdgeInsets.only(top: 260, right: 30, left: 30),
          //padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Text(
            '''Examen Fernando Avila:Nueva York incluye 5 distritos que se ubican donde el río Hudson desemboca en el océano Atlántico. En su centro se encuentra Manhattan, un distrito densamente poblado que se encuentra entre los principales centros comerciales, financieros y culturales del mundo. Sus sitios icónicos incluyen rascacielos, como el Empire State Building, y el amplio Central Park''',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'newsreader'),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(top: 360, left: 30),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/img/perfil.jpg"),
              ),
              shape: BoxShape.circle),
        ),
        Container(
          margin: EdgeInsets.only(left: 235, top: 0),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.centerRight,
          constraints: BoxConstraints.expand(),
          child: Row(
            children: [
              MaterialButton(
                  shape: CircleBorder(),
                  minWidth: 40.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.bookmark_border_sharp,
                    color: Colors.black,
                  )),
              MaterialButton(
                  shape: CircleBorder(),
                  minWidth: 40.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.reply_sharp,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, right: 250),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.topLeft,
          constraints: BoxConstraints.expand(),
          child: Row(
            children: [
              MaterialButton(
                  shape: CircleBorder(),
                  minWidth: 25.0,
                  height: 25.0,
                  onPressed: () {},
                  color: Colors.black54,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.only(top: 160, left: 60),
          constraints: BoxConstraints.expand(),
          alignment: Alignment.topLeft,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minWidth: 30.0,
            height: 10.0,
            onPressed: () {},
            color: Colors.black54,
            child: Text('Travel', style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 400, left: 20),
          padding: const EdgeInsets.all(30.0),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Row(
            children: [
              Container(
                width: 150,
                height: 110,
                margin: EdgeInsets.only(top: 130, right: 20),
                padding: const EdgeInsets.all(50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/img/img1.jpg"),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 110,
                margin: EdgeInsets.only(top: 130),
                padding: const EdgeInsets.all(50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/img/img2.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
