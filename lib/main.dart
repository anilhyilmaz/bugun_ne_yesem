import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int anayemekNo = 1;
  int tatliNo = 1;
  List<String> CorbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Düğün",
    "Yoğurtlu"
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = ['Kadayıf','Baklava','Sütlaç','Kazandibi','Dondurma'];
  void YemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      anayemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
              highlightColor: Colors.white,
              splashColor: Colors.white,
              child: Image.asset("assets/corba_$corbaNo.jpg"),
              onPressed: () {
                YemekleriYenile();
              },
            ),
          )),
          Text(
            CorbaAdlari[corbaNo - 1] + " çorbası",
            style: TextStyle(fontSize: 18.0),
          ),
          Container(
              width: 300,
              child: Divider(
                height: 16,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () => {
                      YemekleriYenile(),
                    },
                child: Image.asset("./assets/yemek_$anayemekNo.jpg")),
          )),
          Text(
            yemekAdlari[anayemekNo-1],
            style: TextStyle(fontSize: 18.0),
          ),
          Container(
              width: 300,
              child: Divider(
                height: 16,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () => {
                      YemekleriYenile(),
                    },
                child: Image.asset("./assets/tatli_$tatliNo.jpg")),
          )),
          Text(
            tatliAdlari[tatliNo-1] ,
            style: TextStyle(fontSize: 18.0),
          ),
          Container(
              width: 300,
              child: Divider(
                height: 16,
              )),
        ],
      ),
    );
  }
}
