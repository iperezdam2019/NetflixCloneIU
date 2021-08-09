import 'package:flutter/material.dart';
import 'package:netflixclone/paginas/inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      home: Inicio(),
    );
  }
}
