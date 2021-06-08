import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rpgen/locaisEncontros/locaisEncontros.dart';
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
            "https://raw.githubusercontent.com/starkkz/rpg/main/Jsons/tormenta_encontros.json"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });
    print(terreno);
    print(data["Floresta"].length);

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
  String monstro = 'template';
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
    int i = random.nextInt(max);
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
    return  Stack(
      children: <Widget>[
        Positioned(child: SizedBox.expand(
    child: Container(
      color: Colors.black,
      child: Image (
        fit: BoxFit.fill,
        image: AssetImage('images/bestiario/$monstro.png'),
      ),
    ),
  )
  ),
  Container(
    margin: EdgeInsets.only(top: 75),
    alignment: Alignment.topCenter,
    child: Text('$bla', style: TextStyle(color: Color.fromRGBO(255, 56, 59, 1), decoration: TextDecoration.none, fontSize: 22, fontWeight: FontWeight.bold),),
  ),
  Container(
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.only(bottom: 18),
    child: GestureDetector(
        onTap: (){
          setState(() {
                      rand();
                    });
        },
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 170,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/rolar.png'))),
        ),
      ),
  ),
      ],
    );
  }
    }
