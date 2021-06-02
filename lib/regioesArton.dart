import 'package:flutter/material.dart';
import 'package:rpgen/list_old.dart';
import 'package:rpgen/locaisEncontros/locaisDeheon.dart';

String terreno = '';

class RegioesArton extends StatefulWidget {
  RegioesArton({Key key}) : super(key: key);

  @override
  _RegioesArtonState createState() => _RegioesArtonState();
}

class _RegioesArtonState extends State<RegioesArton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Regiões Arton"),
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
              //Deheon
              GestureDetector(
                  child: Container(
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
                      "Deheon",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocaisDeheon()));
                  }),

              //Yuden
              GestureDetector(
                  child: Container(
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
                      "Yuden",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Zakharov
              GestureDetector(
                  child: Container(
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
                      "Zakharov",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),
              //Namalkan
              GestureDetector(
                  child: Container(
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
                      "Namalkan",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Callistia
              GestureDetector(
                  child: Container(
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
                      "Callistia",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Bielefeld
              GestureDetector(
                  child: Container(
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
                      "Bielefeld",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Wynlla
              GestureDetector(
                  child: Container(
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
                      "Wynlla",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EncontroPage()));
                  }),

              //Tyrondir
              GestureDetector(
                  child: Container(
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
                      "Tyrondir",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
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
