import 'package:flutter/material.dart';
import 'package:rpgen/geradores/geradores_tormenta.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
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
          color: Colors.red,
        ),
        child: Center(
          child: Image.asset('images/splash.png'),
        ),
      ),
    );
  }
}
