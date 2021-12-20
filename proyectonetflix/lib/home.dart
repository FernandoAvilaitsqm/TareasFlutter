import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  String texto = 'Bienvenido';
  Color col = Colors.amberAccent;
  double wid = 400;
  double hei = 250;
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              alignment: Alignment.center,
              width: wid,
              height: hei,
              color: col,
              child: Text(
                texto,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              duration: const Duration(milliseconds: 600),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 550, left: 12),
              child: Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.green,
                    onPressed: () {
                      col = Colors.green;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                    highlightColor: Colors.greenAccent,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.black45,
                    onPressed: () {
                      col = Colors.black45;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                    highlightColor: Colors.white,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.cyan,
                    onPressed: () {
                      col = Colors.cyan;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.pinkAccent,
                    onPressed: () {
                      col = Colors.pinkAccent;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.red,
                    onPressed: () {
                      col = Colors.red;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.yellow,
                    onPressed: () {
                      col = Colors.yellow;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.orange,
                    onPressed: () {
                      col = Colors.orange;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    height: 40,
                    color: Colors.purple,
                    onPressed: () {
                      col = Colors.purple;
                      setState(() {});
                    },
                    shape: const CircleBorder(),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 10),
            color: Colors.black12,
            width: 300,
            height: 50,
            child: TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                  labelText: 'Ingresa Cualquier Texto',
                  fillColor: Colors.green,
                  focusColor: Colors.purple),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 310),
            child: MaterialButton(
              minWidth: 100,
              height: 40,
              color: Colors.green,
              onPressed: () {
                texto = myController.text;
                setState(() {});
              },
              child: const Text(
                'Enviar',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 600, left: 160),
            child: Row(
              children: [
                MaterialButton(
                  minWidth: 50,
                  height: 50,
                  color: Colors.black38,
                  onPressed: () {
                    if (wid > 50) {
                      wid = wid - 50;
                    } else {
                      wid = 0;
                    }
                    setState(() {});
                  },
                  shape: const CircleBorder(),
                  child: const Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  height: 50,
                  color: Colors.black38,
                  onPressed: () {
                    if (wid < 412) {
                      wid = wid + 50;
                    } else {
                      wid = 412;
                    }
                    setState(() {});
                  },
                  shape: const CircleBorder(),
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 12),
            child: Column(
              children: [
                MaterialButton(
                  minWidth: 50,
                  height: 50,
                  color: Colors.black38,
                  onPressed: () {
                    if (hei < 683) {
                      hei = hei + 50;
                    } else {
                      hei = 683;
                    }
                    setState(() {});
                  },
                  shape: const CircleBorder(),
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  height: 50,
                  color: Colors.black38,
                  onPressed: () {
                    if (hei > 50) {
                      hei = hei - 50;
                    } else {
                      hei = 0;
                    }
                    setState(() {});
                  },
                  shape: const CircleBorder(),
                  child: const Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
