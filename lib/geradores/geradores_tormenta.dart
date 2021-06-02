import 'package:flutter/material.dart';
import 'package:rpgen/encontro_viajantes.dart';
import 'package:rpgen/locaisEncontros/locaisEncontros.dart';
import 'package:rpgen/tipo_missoes.dart';

String terreno = '';

class GeradoresTormenta extends StatefulWidget {
  GeradoresTormenta({Key key}) : super(key: key);

  @override
  _GeradoresTormentaState createState() => _GeradoresTormentaState();
}

class _GeradoresTormentaState extends State<GeradoresTormenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Geradores Aleatorios"),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/dados.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromRGBO(224, 182, 137, 0.3), BlendMode.dstATop),
          )),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
            crossAxisCount: 1,
            children: <Widget>[
              //MONTAGEM DO GRID
              //Encontros
              GestureDetector(
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/valk.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    child: const Text(
                      "Encontros Aleatorios",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TormentaEncontros()));
                  }),
              //Quadro de Missoes
              GestureDetector(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/valk.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Quadro de Missoes",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TormentaMissoes()));
                  }),
              //Encontros Com Viajantes
              GestureDetector(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/valk.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Encontros em Viagens",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroViajantes()));
                  }),
              //Eventos Aleatorios
            ],
          ),
        ));
  }
}
