import 'package:flutter/material.dart';

import 'navbar.dart';

class Camera extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/y.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 60),
                    child: MaterialButton(
                        minWidth: 30,
                        height: 30.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBar()));
                        },
                        child: Text(
                          'X',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Icon(
                    Icons.music_note,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    'Añadir Sonido',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 70,
              height: 420,
              margin: EdgeInsets.only(left: 340, top: 20),
              child: Column(
                children: [
                  const Divider(),
                  Icon(
                    Icons.cameraswitch_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    'Girar',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Icon(
                    Icons.more_time_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    'Velocidad',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Icon(
                    Icons.filter_vintage_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    'filtros',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Icon(
                    Icons.face_retouching_natural_sharp,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    'Embellecer',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Icon(
                    Icons.timer_sharp,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    'Temporizador',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              margin: EdgeInsets.only(top: 470),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/4.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    child: MaterialButton(
                        shape: CircleBorder(),
                        minWidth: 65,
                        height: 65.0,
                        onPressed: () {},
                        color: Colors.red[700],
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 95),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/9.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              margin: EdgeInsets.only(top: 470),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 80,
                    margin: EdgeInsets.only(left: 35, top: 70),
                    child: Text(
                      'Efectos',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 80,
                    margin: EdgeInsets.only(left: 225, top: 70),
                    child: Text(
                      'Cargar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 575),
              color: Colors.black,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 55),
                    child: Text(
                      'Status',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text(
                      '60 s',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text(
                      '15 s',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text(
                      'MV',
                      style: TextStyle(color: Colors.white54),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
