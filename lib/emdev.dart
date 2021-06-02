import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emdev extends StatelessWidget {
  const Emdev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Em Desenvolvimento"),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/fundos/emdev.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(224, 182, 137, 0.5),
                        BlendMode.dstATop))),
            alignment: Alignment.center,
            child: Text(
              "Em Desenvolvimento",
              style: TextStyle(fontSize: 30.0),
            )));
  }
}
