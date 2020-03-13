import 'package:flutter/material.dart';
import 'package:gdl_watermark/gdl_watermark.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Meetup Guadalajara'),
        backgroundColor: Colors.orange,
      ),
      body: Stack(children: <Widget>[

        Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 5,
              child: getTitle(),
            ),
            Expanded(
              flex: 12,
              child: getContactHeadline(),
            ),
            Expanded(flex: 1, child: Divider()),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 8,
              child: getUserStats(),
            ),
            Expanded(flex: 1, child: Divider()),
            Spacer(),
            Flexible(
              flex: 15,
              child: getTextFragment(),
            ),
            Spacer(),
            Expanded(flex: 1, child: Divider()),
            Spacer(
              flex: 2,
            ),
            Flexible(
              flex: 20,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Flexible(child: _fila1('Twitter', '@fluttergdl')),
                        Flexible(child: _fila1('Phone', '+52 (462) 264 1353')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Flexible(child: _fila1('Ubicación', 'Guadalajara, Jal.')),
                        Flexible(child: _fila1('Email', 'se.israel.mc@gmail.com')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 25,
            ),
          ],
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: 0,
          child: Align(
              child: FlutterGdl.showBottomWatermark()),
        ),
      ]),
    );
  }

  Widget getTextFragment() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        'Flutter GDL, una comunidad con ganas de aprender y mejorar. Estamos para compartir, ayudar y aprender.',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget getUserStats() {
    return Row(
      children: <Widget>[
        Expanded(child: _fila1('10', 'Repos')),
        Expanded(child: _fila1('30', 'Seguidores')),
        Expanded(child: _fila1('7', 'Comentarios')),
        Expanded(child: _fila1('45', 'Siguiendo')),
      ],
    );
  }

  Widget getContactHeadline() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => print('Mensaje'),
        ),
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Text('FG'),
          radius: 30,
        ),
        IconButton(icon: Icon(Icons.phone, size: 30), onPressed: () => print('Llamar'))
      ],
    );
  }

  Widget getTitle() {
    return Center(
      child: Text(
        'Edición Marzo',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _fila1(String titulo, String subtitulo) => Column(
        children: <Widget>[
          Flexible(
              child: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
          Flexible(child: Text(subtitulo)),
        ],
      );
}
