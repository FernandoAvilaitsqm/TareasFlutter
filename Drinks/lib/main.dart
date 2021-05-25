import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Colors.blue[900],
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                fit: BoxFit.cover,
                color: Colors.blueAccent[900],
                image: AssetImage("assets/img/whisky.png"),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.topLeft,
                  color: Colors.black12,
                  constraints: BoxConstraints.expand(),
                  child: Text(
                    'Whisky',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'newsreader'),
                  ),
                ),
              ),
              Center(
                  child: Container(
                margin: const EdgeInsets.all(00.0),
                padding: const EdgeInsets.all(00.0),
                alignment: Alignment.centerLeft,
                color: Colors.black12,
                constraints: BoxConstraints.expand(),
                child: Text(
                  '''       

                Jack Daniels              
   












                ''',
                  style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'newsreader'),
                ),
              )),

              //style: TextStyle(color: Colors.orange, fontSize: 40),

              Center(
                  child: Container(
                margin: const EdgeInsets.all(00.0),
                padding: const EdgeInsets.all(71.0),
                alignment: Alignment.centerLeft,
                color: Colors.black12,
                constraints: BoxConstraints.expand(),
                child: Text(
                  '''         
                                                    
                DRINKS              



                ''',
                  style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'newsreader'),
                ),
              )),
              Center(
                  child: Container(
                margin: const EdgeInsets.all(00.0),
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                color: Colors.black12,
                constraints: BoxConstraints.expand(),
                child: Text(
                  '''           








                Large collection of wines and sprints.
                Martini drinks offers fine selection 
                of wine, sprints like whiskey, vodka,
                run and much more.                                











                ''',
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              )),
            ],
          )),
    );
  }
}
