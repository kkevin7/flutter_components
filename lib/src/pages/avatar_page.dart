import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.show.news/__export/1568656839941/sites/debate/img/2019/09/16/iron_crop1568656773199.jpg_423682103.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1000,h_600/https://wipy.tv/wp-content/uploads/2020/04/este-comic-podria-ser-la-respuesta-para-mpiderman-del-mcu-14-1.jpg'),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}