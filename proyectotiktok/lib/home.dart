import 'package:flutter/material.dart';
import 'package:proyectotiktok/videos.dart';
import 'videos.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Videos(),
            Container(
                height: 50,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Text(
                        '''Siguiendo    |  ''',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '''Para ti''',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          //   fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
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
