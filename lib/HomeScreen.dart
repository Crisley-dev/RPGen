import 'package:flutter/material.dart';
import 'LoadStart.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Exemplo'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white70,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/scroll.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "$encontro1",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 40.0),
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 10.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 60,
                    width: 190,
                    child: TextButton(
                      child: Text(
                        "Rolar",
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red[900]),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
