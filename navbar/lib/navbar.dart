import 'package:flutter/material.dart';
import 'package:navbar/pag1.dart';
import 'package:navbar/pag2.dart';
import 'package:navbar/pag3.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [
    Pag1(),
    Pag2(),
    Pag3(),
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
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.green, primaryColor: Colors.blue),
          child: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: indexP,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  label: ""),
            ],
          )),
    );
  }
}
