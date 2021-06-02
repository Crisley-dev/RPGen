import 'package:flutter/material.dart';
import 'package:rpgen/list_old.dart';

String terreno = '';

class LocaisDeheon extends StatefulWidget {
  LocaisDeheon({Key key}) : super(key: key);

  @override
  _LocaisDeheonState createState() => _LocaisDeheonState();
}

class _LocaisDeheonState extends State<LocaisDeheon> {
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
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            children: <Widget>[
              //MONTAGEM DO GRID DE LOCAIS
              //Deheon Geral
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage("images/deheon.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Deheon Geral",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Deheon Geral';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Floresta Troll
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/florestapx.gif'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Floresta Troll",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Floresta Troll';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Monte Palidor
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/montepx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Monte Palidor",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Monte Palidor';
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
                            image: AssetImage('images/fundos/pantanopx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Pantano dos Juncos",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Pantano dos Juncos';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Ruina
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/ruinaspx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Ruinas de Tolian",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Ruinas de Tolian';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Montanhas Taldiskan
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/montanhapx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Montanhas Teldiskan",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Montanhas Teldiskan';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Badlands
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/badlandspx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Bad'lands",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Badlands';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Colinas de Marah
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/colinapx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Colinas de Marah",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Colinas de Marah';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Floresta Basilisco
              GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(224, 182, 137, 1),
                        image: DecorationImage(
                            image: AssetImage('images/fundos/florestapx.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(224, 182, 137, 0.5),
                                BlendMode.dstATop))),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Floresta Basilisco",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    terreno = 'Floresta Basilisco';
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
