import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  var list = ["femenino", "masculino"];
  String _vistadrop = 'Selecione';
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 9,
              ),
              Text('Informacion Personal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text('Nombre Completo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Nombre completo ",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.edit)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Nombre de Usuario',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "usuario",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.edit)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.mail)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Cedula',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Cedula: 1777777777",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.tag)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Contraseña",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.vpn_key)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Ciudad Origen',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "ciudad de origen",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.location_city)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Genero',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  child: Column(children: <Widget>[
                DropdownButton(
                  dropdownColor: Colors.white,
                  focusColor: Colors.white,
                  items: list.map((String val) {
                    return DropdownMenuItem(value: val, child: Text(val));
                  }).toList(),
                  onChanged: (newvalue) {
                    this.setState(() {});
                  },
                  hint: Text("Seleccione",
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                ),
              ])),
              SizedBox(
                height: 9,
              ),
              Text('Direcion de Domicilio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Direccion: Caran 8 Nueva Tola",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.home)),
                  )),
              SizedBox(
                height: 9,
              ),
              Text('Direccion de Trabajo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Direccion: Caran 8 Nueva Tola",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.location_city)),
                  )),
              SizedBox(
                height: 9,
              ),
            ],
          )),
    );
  }
}
