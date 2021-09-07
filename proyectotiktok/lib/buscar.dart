import 'package:flutter/material.dart';
import 'package:proyectotiktok/navbar.dart';
import 'imagenes.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 65),
              width: 412,
              child: ListView(
                children: [
                  Container(child: Imagenes('xyzwv', 230, 412)),
                  Container(
                    margin: EdgeInsets.only(),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: MaterialButton(
                                        shape: CircleBorder(),
                                        minWidth: 30,
                                        height: 30.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '#',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    child: Text(
                                      'TikTok Deportes',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 140),
                                    child: MaterialButton(
                                        minWidth: 20,
                                        height: 20.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '22M>',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                'TikTok Deportes',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(child: Imagenes('58716', 160, 120)),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: MaterialButton(
                                        shape: CircleBorder(),
                                        minWidth: 30,
                                        height: 30.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Icon(
                                          Icons.ac_unit_sharp,
                                        )),
                                  ),
                                  Container(
                                    child: Text(
                                      'Congelar Foto',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 130),
                                    child: MaterialButton(
                                        minWidth: 20,
                                        height: 20.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '125.4K>',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                'Efecto Popular',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(child: Imagenes('01234', 160, 120)),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: MaterialButton(
                                        shape: CircleBorder(),
                                        minWidth: 30,
                                        height: 30.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '#',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    child: Text(
                                      'Lo cuento en TikTok',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    child: MaterialButton(
                                        minWidth: 20,
                                        height: 20.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '2.9B>',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                'Hashtag Popular',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(child: Imagenes('56789', 160, 120)),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: MaterialButton(
                                        shape: CircleBorder(),
                                        minWidth: 30,
                                        height: 30.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Icon(Icons.music_note_outlined)),
                                  ),
                                  Container(
                                    child: Text(
                                      'La Voladora',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 140),
                                    child: MaterialButton(
                                        minWidth: 20,
                                        height: 20.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '28.9K>',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                'Musica popular',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(child: Imagenes('abcde', 160, 120)),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: MaterialButton(
                                        shape: CircleBorder(),
                                        minWidth: 30,
                                        height: 30.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '#',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  Container(
                                    child: Text(
                                      'DiferenteQueTu',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 140),
                                    child: MaterialButton(
                                        minWidth: 20,
                                        height: 20.0,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavBar()));
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          '1.4M>',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                'Hashtag Popular',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(child: Imagenes('fghi5', 160, 120)),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
                height: 40,
                margin: EdgeInsets.only(left: 20, top: 23),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      color: Colors.black38,
                      width: 350,
                      margin: EdgeInsets.only(),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          labelText: 'Buscar',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.remove_from_queue_sharp,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
