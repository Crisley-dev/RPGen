import 'package:flutter/material.dart';
import 'package:rpgen/geradores/geradores_tormenta.dart';
// ignore: unused_import
import 'package:rpgen/list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Encontros Aleatorios"),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  image: DecorationImage(
                      image: AssetImage("images/dados.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop))),
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Container(
                    child: Card(
                        color: Colors.white70,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Image.asset("images/dnd.png"),
                        )),
                  )),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Container(
                    child: Card(
                        color: Colors.white70,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: GestureDetector(
                          child: Image.asset("images/tormenta20.png"),
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GeradoresTormenta()));
                          },
                        )),
                  )),
            )
          ],
        ));
  }
}
