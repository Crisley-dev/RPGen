import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpgen/quadro_missoes.dart';

String tipomissao = '';

class TormentaMissoes extends StatefulWidget {
  TormentaMissoes({Key key}) : super(key: key);

  @override
  _TormentaMissoesState createState() => _TormentaMissoesState();
}

class _TormentaMissoesState extends State<TormentaMissoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Tipos de Missoes"),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/dados.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromRGBO(224, 182, 137, 0.5), BlendMode.dstATop),
          )),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(30),
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
            crossAxisCount: 1,
            children: <Widget>[
              //MONTAGEM DO GRID DE LOCAIS
              //Caça
              GestureDetector(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 77, 0.6),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/missoes.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(31, 191, 51, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text("Missões de Caça",
                        style: GoogleFonts.syncopate(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  onTap: () {
                    tipomissao = 'Caca';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuadroMissoes()));
                  }),
              //Busca e Coleta
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 77, 0.16),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/missoes.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Missões de Busca e Coleta",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    tipomissao = 'Busca e Coleta';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuadroMissoes()));
                  }),
              //Gerais
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 0.5),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/missoes.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(0, 0, 83, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Missões Gerais",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    tipomissao = 'Gerais';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuadroMissoes()));
                  }),
              //Investigação
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 0.5),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/missoes.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Missões de Investigação",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    tipomissao = 'Investigacao';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuadroMissoes()));
                  }),

              //Localização
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 124, 32, 0.5),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/missoes.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Missões de Localização",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    tipomissao = 'Localizacao';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuadroMissoes()));
                  }),
            ],
          ),
        ));
  }
}
