import 'package:Flutter_youtube_api/telas/biblioteca.dart';
import 'package:Flutter_youtube_api/telas/emalta.dart';
import 'package:Flutter_youtube_api/telas/inicio.dart';
import 'package:Flutter_youtube_api/telas/inscricao.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print("Acao video funcionando");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("conta");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
//        type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,

        items: [
          BottomNavigationBarItem(
//              backgroundColor: Colors.orange,
              title: Text("Inicio"),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              //            backgroundColor: Colors.green,
              title: Text("Em alta"),
              icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(
              //          backgroundColor: Colors.blue,
              title: Text("Inscrições"),
              icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(
              //        backgroundColor: Colors.pink,
              title: Text("Biblioteca"),
              icon: Icon(Icons.folder)),
        ],
      ),
    );
  }
}
