import 'package:flutter/material.dart';
import 'package:netflixclone/componets/cartel_principal.dart';




class Pantallainicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _goToHome(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(
          image: AssetImage('assets/images/iconoInicial.png'),
        ),
      ),
    );
  }

// Función para el delayed del icono inicial al ejecutar la aplicación
  void _goToHome(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Cartelprincipal();
      }));
    });
  }
}