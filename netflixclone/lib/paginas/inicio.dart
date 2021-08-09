import 'package:flutter/material.dart';
import 'package:netflixclone/componets/cartel_principal.dart';
import 'package:netflixclone/componets/item_imagen.dart';
import 'package:netflixclone/componets/item_redondeado.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Cartelprincipal(),
          this.listaHorizontal('Novedades', ItemRedondeado(), 9),
          SizedBox(height: 10.0),
          this.listaHorizontal('Programa sobre viajes', ItemImg(), 10),
          SizedBox(height: 10.0),
          this.listaHorizontal('Tendencias', ItemImg(), 10),
          SizedBox(height: 10.0),
          this.listaHorizontal('Mi lista', ItemImg(), 10),
          SizedBox(height: 20.0)
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Inicio')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Buscar')),
        BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text('Proximamente')),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_downward), title: Text('Descargas')),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), title: Text('Más')),
      ],
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
            child: Text(titulo,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              },
            ),
          ),
        ]);
  }
}
