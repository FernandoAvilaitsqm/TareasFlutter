import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: MaterialButton(
                shape: CircleBorder(),
                minWidth: 50,
                height: 50.0,
                onPressed: () {},
                color: Colors.white,
                child: Icon(
                  Icons.file_download_rounded,
                  color: Colors.black45,
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
                shape: CircleBorder(),
                minWidth: 50,
                height: 50.0,
                onPressed: () {},
                color: Colors.white,
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.black45,
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
                shape: CircleBorder(),
                minWidth: 50,
                height: 50.0,
                onPressed: () {},
                color: Colors.white,
                child: Icon(
                  Icons.maps_ugc_sharp,
                  color: Colors.black45,
                )),
          ),
        ],
      ),
    );
  }
}
