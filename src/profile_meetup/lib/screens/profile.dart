import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GDL.'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Edición Marzo',
            style: TextStyle(fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.message, color: Colors.black, size: 30,),
                  onPressed: () => print('Mensaje'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('FG'),
                  radius: 30,
                ),
                IconButton(
                    icon: Icon(Icons.phone, size: 30),
                    onPressed: () => print('Llamar')
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: <Widget>[
               Expanded(child: _fila1('10', 'Repos')),
               Expanded(child: _fila1('30', 'Seguidores')),
               Expanded(child: _fila1('7', 'Comentarios')),
               Expanded(child: _fila1('45', 'Siguiendo')),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Text(
              'Flutter GDL, una comunidad con ganas de aprender y mejorar. Estamos para compartir, ayudar y aprender.',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      _fila1('Twitter', '@fluttergdl'),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      _fila1('Phone', '+52 (462) 264 1353'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      _fila1('Ubicación', 'Guadalajara, Jal.'),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      _fila1('Email', 'se.israel.mc@gmail.com'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.portrait),
        onPressed: () => print(''),
      ),
    );
  }

  Widget _fila1(String titulo, String subtitulo) => Column(
    children: <Widget>[
      Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      Text(subtitulo),
    ],
  );
}
