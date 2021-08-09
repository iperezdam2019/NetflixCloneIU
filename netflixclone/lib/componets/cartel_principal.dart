import 'package:flutter/material.dart';
import 'package:netflixclone/componets/nav_bar_superior.dart';

class Cartelprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[this.cabecera(), this.infoSerie(), this.botonera()]);
  }

  Widget cabecera() {
    return Stack(children: <Widget>[
      Image.asset('assets/images/vikings.PNG',
          height: 340.0, fit: BoxFit.cover //coge todo el contenedor
          ),
      //Degradado imagen
      Container(
        width: double.infinity,
        height: 340.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.black38, Colors.black]),
        ),
      ),
      //SafeArea hará que baje el menu
      SafeArea(child: NavBarSupererior()),
    ]);
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovlesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        Text(
          'Suspense inostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text('Mi lista',
                  style: TextStyle(color: Colors.white, fontSize: 12.0))
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text('Info', style: TextStyle(color: Colors.white, fontSize: 12.0))
            ],
          )
        ],
      ),
    );
  }
}
