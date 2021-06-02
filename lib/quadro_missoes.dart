import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/animation.dart';
import 'package:rpgen/tipo_missoes.dart';
import 'package:google_fonts/google_fonts.dart';

class QuadroMissoes extends StatefulWidget {
  @override
  QuadroMissoesState createState() => new QuadroMissoesState();
}

class QuadroMissoesState extends State<QuadroMissoes>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  //List data;
  Map data;
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "https://raw.githubusercontent.com/starkkz/rpg/main/Jsons/board_missoes.json"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });
    print(tipomissao);
    print(data["Encontros"].length);

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
    controller = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  String missoes = "";
  String recompensa = "";

  int d;
  rand2(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  rand() {
    Random random = new Random();
    int max = data[tipomissao].length;
    int i = random.nextInt(max);
    missoes = data[tipomissao][i]['descricao'];
    recompensa = "Recompensa: " + data[tipomissao][i]['recompensa'];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Quadro de Missoes'),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/board.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.orange.withOpacity(0.4), BlendMode.dstATop))),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 40, left: 20.0),
              child: Text("$missoes",
                  style: GoogleFonts.orbitron(
                      fontSize: 30.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 360, bottom: 10),
              padding: EdgeInsets.only(top: 4, left: 20.0),
              child: Text("$recompensa",
                  style: GoogleFonts.orbitron(
                      fontSize: 22.0, fontWeight: FontWeight.bold)),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                      height: 80,
                      width: 90,
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/rolar.png"),
                                  fit: BoxFit.fitHeight)),
                        ),
                        onTap: () {
                          setState(() {
                            rand();
                          });
                        },
                      )),
                ))
          ],
        ));
  }
}
