import 'package:flutter/material.dart';
import 'package:rpgen/geradores/geradores_tormenta.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then(
      (_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GeradoresTormenta(),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 0, 0, 1),
        ),
        child: Center(
          child: Image.asset('images/splash.png',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
