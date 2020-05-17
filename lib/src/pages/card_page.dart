import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text(
                'Esta es una subtitulo para mostrar dentro de la tarjeta que se puede mostrar con el contenido del Widget'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://images.hdqwalls.com/wallpapers/minimal-sunset-landscape-4k-w5.jpg'),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://images.hdqwalls.com/wallpapers/minimal-sunset-landscape-4k-w5.jpg'),
          // ),
          Container(
            child: Text('Descripción de la imágen'),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}
