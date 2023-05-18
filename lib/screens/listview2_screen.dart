import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView.separated(
          //Obtener el tamaño de mi lista
          itemCount: games.length,
          //creamos el constructosr de cada elemento de mi lista
          itemBuilder: (context, index) => ListTile(
              //Asignamos e titulo a partir de mi lista
              title: Text(games[index]),
              //Asignamos el icono de cada elemento
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              onTap: () {
                var seleccion = games[index];
                print(seleccion);
              }),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
