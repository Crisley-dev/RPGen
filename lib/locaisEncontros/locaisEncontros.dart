import 'package:flutter/material.dart';
import 'package:rpgen/list.dart';
import 'package:google_fonts/google_fonts.dart';

String terreno = '';

class TormentaEncontros extends StatefulWidget {
  TormentaEncontros({Key key}) : super(key: key);

  @override
  _TormentaEncontrosState createState() => _TormentaEncontrosState();
}

class _TormentaEncontrosState extends State<TormentaEncontros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Locais de Encontros"),
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
            padding: const EdgeInsets.all(30),
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
            crossAxisCount: 1,
            children: <Widget>[
              //MONTAGEM DO GRID DE LOCAIS
              //Floresta
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/florestapx.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text("Floresta",
                        style: GoogleFonts.syncopate(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  onTap: () {
                    terreno = 'Floresta';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Pantano
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/pantano.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Pantanos",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Pantano';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //DESERTO
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/deserto.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Deserto",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Deserto';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Montanhas
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/montanha.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Montanha",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Montanha';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Subterraneo
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(0, 0, 0, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/subterraneo.gif"),
                            fit: BoxFit.contain,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Subterraneo",
                      style: GoogleFonts.syncopate(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Subterraneo';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Praia
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/praia.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Praia",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Praia';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Masmorras
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/masmorra.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Masmorra",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Masmorra';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Ermos e Planicies
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/fundos/ermos.gif"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Ermos",
                      style: GoogleFonts.syncopate(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Ermos';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
            ],
          ),
        ));
  }
}
