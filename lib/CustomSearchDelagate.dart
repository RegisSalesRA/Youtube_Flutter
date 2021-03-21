import 'package:flutter/material.dart';

class CustomSearchDelagate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, "");
        {}
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
//    print("Pesquisa esta sendo realizada " + query);
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> lista = List();
    return Container();
    /*
    if (query.isNotEmpty) {
      lista = ["Guitarra", "Bateria", "Baixo", "Teclado"]
          .where((texto) => texto.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
      return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              close(context, lista[index]);
            },
            title: Text(lista[index]),
          );
        },
      );
    } else {
      return Center(
        child: Text("Nenhum resultado encontrado! =("),
      );
      
    }
    */
  }
}
