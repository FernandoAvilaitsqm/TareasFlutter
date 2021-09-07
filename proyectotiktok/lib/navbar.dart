import 'package:flutter/material.dart';
import 'package:proyectotiktok/buscar.dart';
import 'package:proyectotiktok/camera.dart';

import 'entrada.dart';
import 'home.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [
    Home(),
    Buscar(),
    Camera(),
    Entrada(
        'Toda la actividad',
        'Los mensjaes y las notificaciones apareceran aquí',
        Icons.comment_sharp,
        Colors.white),
    Entrada('Perfil', 'Registrate para tener una cuenta',
        Icons.perm_identity_sharp, Colors.black),
  ];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: indexP,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.black,
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: "Inicio"),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25.0,
                ),
                label: "Tendencias",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: "Bandeja "),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_identity_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: "Perfil"),
            ],
          )),
    );
  }
}
