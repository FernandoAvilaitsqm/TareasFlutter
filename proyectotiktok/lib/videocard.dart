import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  String video = 'assets/videos/vid1.mp4';
  String imgperfil = 'assets/videos/vid1.mp4';
  String imgsong = 'assets/videos/vid1.mp4';
  final String usuario;
  final String likes;
  final String coment;
  final String sends;
  final String descripcion;
  final String hashtags;
  VideoCard({
    Key? key,
    required this.video,
    required this.imgperfil,
    required this.imgsong,
    required this.usuario,
    required this.likes,
    required this.coment,
    required this.sends,
    required this.descripcion,
    required this.hashtags,
  });
  @override
  State<StatefulWidget> createState() {
    return VideoDemoState();
  }
}

class VideoDemoState extends State<VideoCard> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.video);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(10.0);
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 412,
          height: 640,
          margin: EdgeInsets.only(top: 1),
          child: VideoPlayer(_controller),
        ),
        Container(
          alignment: Alignment.center,
          child: MaterialButton(
            minWidth: 300,
            height: 450.0,
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              size: 50,
              color: Colors.black12,
            ),
          ),
        ),
        Container(
          width: 70,
          height: 420,
          margin: EdgeInsets.only(left: 340, top: 200),
          child: Column(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      border: new Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage(widget.imgperfil),
                      ),
                      shape: BoxShape.circle)),
              const Divider(),
              Container(
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  widget.likes,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              Container(
                child: Icon(
                  Icons.pending_sharp,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  widget.coment,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              Container(
                child: Icon(
                  Icons.reply_sharp,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  widget.sends,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage(widget.imgsong),
                      ),
                      shape: BoxShape.circle)),
            ],
          ),
        ),
        Container(
          height: 120,
          width: 250,
          margin: EdgeInsets.only(top: 500),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 150),
                child: Text(
                  '''@''' + widget.usuario,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 100, top: 5, left: 5),
                child: Text(
                  widget.descripcion,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 130, top: 5, left: 5),
                child: Text(
                  widget.hashtags,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Icon(
                        Icons.music_note_sharp,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '''Sonido Original-  ''' + widget.usuario,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          //   fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
