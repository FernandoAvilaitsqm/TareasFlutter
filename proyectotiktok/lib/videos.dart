import 'package:flutter/material.dart';
import 'package:proyectotiktok/videocard.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300,
      height: 640,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          VideoCard(
              video: 'assets/videos/vid4.mp4',
              imgperfil: 'assets/img/w.png',
              imgsong: 'assets/img/w.png',
              usuario: "leoJLopeezp",
              likes: "1.7M",
              coment: "58.0K",
              sends: "25K",
              descripcion: "Consejos en programacíon",
              hashtags: "#Ecuador #XYZ #Trend"),
          VideoCard(
              video: 'assets/videos/vid5.mp4',
              imgperfil: 'assets/img/x.png',
              imgsong: 'assets/img/y.png',
              usuario: "Adriana.Tech",
              likes: "1.5M",
              coment: "27.0K",
              sends: "158",
              descripcion: "Mejores libros para programadores ",
              hashtags: "#Libros #Dev "),
          VideoCard(
              video: 'assets/videos/vid2.mp4',
              imgperfil: 'assets/img/z.png',
              imgsong: 'assets/img/a.png',
              usuario: "MasterMuñozoficial",
              likes: "2.8M",
              coment: "23.7K",
              sends: "2K",
              descripcion: "Consejos para producir dinero",
              hashtags: "#Exito #Dinero"),
          VideoCard(
              video: 'assets/videos/vid3.mp4',
              imgperfil: 'assets/img/foto1.jpg',
              imgsong: 'assets/img/foto5.jpg',
              usuario: "ExitoEstrella",
              likes: "2M",
              coment: "3.2M",
              sends: "1K",
              descripcion: "Libros de Educacíon financiera",
              hashtags: "#Educar #Lee #Libro"),
          VideoCard(
              video: 'assets/videos/vid1.mp4',
              imgperfil: 'assets/img/foto1.jpg',
              imgsong: 'assets/img/foto3.jpg',
              usuario: "JoseAndre",
              likes: "1.5M",
              coment: "27.0K",
              sends: "158",
              descripcion: "Todo en Musica",
              hashtags: "#Ecuador #XYZ #Song"),
        ],
      ),
    );
  }
}
