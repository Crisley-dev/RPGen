import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rpgen/locaisEncontros/locaisDeheon.dart';
import 'package:flutter/animation.dart';

class EncontroPage extends StatefulWidget {
  @override
  EncontroPageState createState() => new EncontroPageState();
}

class EncontroPageState extends State<EncontroPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  //List data;
  Map data;
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "https://raw.githubusercontent.com/starkkz/rpg/main/Jsons/locais_deheon.json"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });

    print(data["Floresta Troll"].length);

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

  String bla = "";
  String monstro = 'table';
  int d;
  rand2(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  rand() {
    print(terreno);
    print(bla);
    Random random = new Random();
    int max = data[terreno].length;
    int i = random.nextInt(max - 1);
    var dado1 = int.parse(data[terreno][i]['dado1']);
    var mod1 = int.parse(data[terreno][i]['mod1']);
    var dado2 = int.parse(data[terreno][i]['dado2']);
    var mod2 = int.parse(data[terreno][i]['mod2']);
    var numdado1 = int.parse(data[terreno][i]['num_dado1']);
    var numdado2 = int.parse(data[terreno][i]['num_dado2']);
    var monstro1 = data[terreno][i]['monstro1'];
    var monstro2 = data[terreno][i]['monstro2'];
    var multi = int.parse(data[terreno][i]['multi']);
    int rolagem1 = random.nextInt(dado1 + 1) + mod1;
    int rolagem2 = random.nextInt(dado2 + 1) + mod2;

    rolagem1 == 0
        ? rolagem1 = (rolagem1 + 1) * numdado1
        : rolagem1 = rolagem1 * numdado1;
    rolagem2 == 0
        ? rolagem2 = (rolagem2 + 1) * numdado2
        : rolagem2 = rolagem2 * numdado2;
    print("dado1: $dado1");
    print("mod1: $mod1");
    print("rolagem1: $rolagem1");
    multi == 0
        ? bla = "$rolagem1" + " " + monstro1
        : bla =
            "$rolagem1" + " " + monstro1 + " com " + "$rolagem2 " + monstro2;

    monstro = data[terreno][i]['monstro1'];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Encontros Aleatorios'),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 80),
              margin: EdgeInsets.only(top: 50, bottom: 100),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bestiario/$monstro.jpg"),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.9), BlendMode.dstATop))),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(top: 4, left: 20.0),
              child: Text(
                "$bla",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                      height: 100,
                      width: 190,
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
