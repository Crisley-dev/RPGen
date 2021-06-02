import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rpgen/HomeScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request =
    "https://raw.githubusercontent.com/starkkz/rpg/main/deheon_floresta_troll.json";

dynamic todaLista;
dynamic local1,
    encontro1,
    local2,
    encontro2,
    local3,
    encontro3,
    local4,
    encontro4,
    local5,
    encontro5,
    local6,
    encontro6,
    local7,
    encontro7,
    local8,
    encontro8;

//Função no que pega a string no futuro no site e transforma em formato json
Future<List> getData() async {
  http.Response response =
      await http.get(request); //Solicita a string do servidor
  return json.decode(response.body); //Retorna a string convertida em json
}

// INICIO CLASSE DO LOAD //
class LoadStart extends StatefulWidget {
  @override
  _LoadStartState createState() => _LoadStartState();
}

class _LoadStartState extends State<LoadStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                );
              } else {
                todaLista = snapshot.data[0];
                Random random = new Random();
                int i = random.nextInt(7) + 1;
                local1 = snapshot.data[0]['local'];
                encontro1 = snapshot.data[i]['encontro'];
                /*
                local2 = snapshot.data[1]['local'];
                encontro2 = snapshot.data[1]['encontro'];
                local3 = snapshot.data[2]['local'];
                encontro3 = snapshot.data[2]['encontro'];
                local4 = snapshot.data[3]['local'];
                encontro4 = snapshot.data[3]['encontro'];
                local5 = snapshot.data[4]['local'];
                encontro5 = snapshot.data[4]['encontro'];
                local6 = snapshot.data[5]['local'];
                encontro6 = snapshot.data[5]['encontro'];
                local7 = snapshot.data[6]['local'];
                encontro7 = snapshot.data[6]['encontro'];
                local8 = snapshot.data[7]['local'];
                encontro8 = snapshot.data[7]['encontro'];
                  */
                print('✔ GET Cotação de todas moedas.');
                print(local1);
                print(encontro1);
                print(i);

                return HomeScreen(); //Chama a pagina principal caso a API seja carregada com sucesso.
              }
          }
        },
      ),
    );
  }
}

// FIM CLASSE DO LOAD //
