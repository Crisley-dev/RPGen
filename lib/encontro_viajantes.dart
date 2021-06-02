import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rpgen/locaisEncontros/locaisEncontros.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class EncontroViajantes extends StatefulWidget {
  @override
  EncontroViajantesState createState() => new EncontroViajantesState();
}

class EncontroViajantesState extends State<EncontroViajantes>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  //List data;
  Map data;
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "https://raw.githubusercontent.com/starkkz/rpg/main/Jsons/encontro_viajantes.json"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });
    print(terreno);
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

  String encontro = "";

  int d;
  rand2(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  rand() {
    Random random = new Random();
    int max = data["Encontros"].length;
    int i = random.nextInt(max);
    encontro = data["Encontros"][i]['descricao'];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Encontros em Viagens'),
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
                      image: AssetImage("images/fundos/viajantes.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.orange.withOpacity(0.4), BlendMode.dstATop))),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 90),
                padding: EdgeInsets.only(top: 4, left: 20.0),
                child: SingleChildScrollView(
                  child: Text("$encontro",
                      style: GoogleFonts.firaMono(
                          fontWeight: FontWeight.bold, fontSize: 32.0)),
                )),
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
