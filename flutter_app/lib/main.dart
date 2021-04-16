/* Kullanılan Widget'lar :

MaterialApp, Scaffold, AppBar, Text, SafeArea,
Column, Expanded, Container, Center, ElevatedButton
FloatingActionButton, Image, Row, TextField, BoxDecoration
TextStyle, Padding, TextButton

MyApp,
Yemekler,
Corbalar, Izgaralar, Tatlilar, Icecekler, Yoresel,
AdSoyad, Foto, Sonuc, Bilgi

 */
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

import 'dart:async';

void main() {
  runApp(MyApp());
}

int mercimekCorba = 0;
int domatesCorba = 0;
int mantarCorba = 0;
int tavukSuyuCorba = 0;

int realMercimekCorba = 0;
int realDomatesCorba = 0;
int realMantarCorba = 0;
int realTavukSuyuCorba = 0;

int kofteIzgara = 0;
int adanaIzgara = 0;
int tavukIzgara = 0;
int kuzuIzgara = 0;

int realKofteIzgara = 0;
int realAdanaIzgara = 0;
int realTavukIzgara = 0;
int realKuzuIzgara = 0;

int baklava = 0;
int kunefe = 0;
int dondurma = 0;
int kazandibi = 0;

int realBaklava = 0;
int realKunefe = 0;
int realDondurma = 0;
int realKazandibi = 0;

int cay = 0;
int kahve = 0;
int pepsi = 0;
int meyveSuyu = 0;

int realCay = 0;
int realKahve = 0;
int realPepsi = 0;
int realMeyveSuyu = 0;

int normalEtliekmek = 0;
int sadeEtliekmek = 0;
int peynirliEtliekmek = 0;
int bicakArasi = 0;

int realNormalEtliekmek = 0;
int realSadeEtliekmek = 0;
int realPeynirliEtliekmek = 0;
int realBicakArasi = 0;

int ontomercimekCorba = 0;
int ontodomatesCorba = 0;
int ontomantarCorba = 0;
int ontotavukSuyuCorba = 0;

int ontokofteIzgara = 0;
int ontoadanaIzgara = 0;
int ontotavukIzgara = 0;
int ontokuzuIzgara = 0;

int ontobaklava = 0;
int ontokunefe = 0;
int ontodondurma = 0;
int ontokazandibi = 0;

int ontocay = 0;
int ontokahve = 0;
int ontopepsi = 0;
int ontomeyveSuyu = 0;

int ontonormalEtliekmek = 0;
int ontosadeEtliekmek = 0;
int ontopeynirliEtliekmek = 0;
int ontobicakArasi = 0;

var adSoyad = "";
var realAdSoyad = "";
var ontoadSoyad = "";

var masaNumara = "";
var realMasaNumara = "";
var ontomasaNumara = "";

var uyari1 = "";
var uyari2 = "";
var uyari3 = "";

File x;
File realX;
File ontox;

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Yemekler(),
    );
  }
}

class Yemekler extends StatefulWidget {
  @override
  _YemeklerState createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ana Menü"), backgroundColor: Colors.green),
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        child: Image.asset('lib/images/corba.jpg'),
                        onPressed: () {
                          Route corba = MaterialPageRoute(builder: (context) {
                            return Corbalar();
                          });
                          Navigator.push(context, corba);

                          setState(() {
                            uyari1 = "";
                          });
                        }),
                  )),
              Expanded(
                  flex: 1,
                  child:

                     Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(child: Text("Çorbalar")),
                    ),
                  ),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        child: Image.asset('lib/images/izgara.jpg'),
                        onPressed: () {
                          Route izgara = MaterialPageRoute(builder: (context) {
                            return Izgaralar();
                          });
                          Navigator.push(context, izgara);
                          setState(() {
                            uyari1 = "";
                          });
                          //print("ızgara tıklandı");
                        }),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Izgaralar")),
                  )),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        child: Image.asset('lib/images/tatli.jpg'),
                        onPressed: () {
                          Route tatli = MaterialPageRoute(builder: (context) {
                            return Tatlilar();
                          });

                          Navigator.push(context, tatli);
                          setState(() {
                            uyari1 = "";
                          });
                          //print("tatlı tıklandı");
                        }),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Tatlılar")),
                  )),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        child: Image.asset('lib/images/meyvesuyu.jpg'),
                        onPressed: () {
                          Route icecek = MaterialPageRoute(builder: (context) {
                            return Icecekler();
                          });

                          Navigator.push(context, icecek);
                          setState(() {
                            uyari1 = "";
                          });
                          //print("içecek tıklandı");
                        }),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("İçecekler")),
                  )),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        child: Image.asset('lib/images/etliekmek.jpg'),
                        onPressed: () {
                          Route yoresel = MaterialPageRoute(builder: (context) {
                            return Yoresel();
                          });

                          Navigator.push(context, yoresel);
                          setState(() {
                            uyari1 = "";
                          });
                          //print("yöresel yemekler tıklandı");
                        }),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Yöresel Yemekler")),
                  )),
              Expanded(
                flex: 1,
                child: Center(
                    child: Text(uyari1.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black))),
              ),
              Expanded(
                  flex: 7,
                  child:
                     FloatingActionButton(
                        child: Center(
                            child: Text("ONAYLA",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    backgroundColor: Colors.white))),
                        onPressed: () {
                          if (mercimekCorba > 0 ||
                              domatesCorba > 0 ||
                              mantarCorba > 0 ||
                              tavukSuyuCorba > 0 ||
                              kofteIzgara > 0 ||
                              adanaIzgara > 0 ||
                              tavukIzgara > 0 ||
                              kuzuIzgara > 0 ||
                              baklava > 0 ||
                              kunefe > 0 ||
                              dondurma > 0 ||
                              kazandibi > 0 ||
                              cay > 0 ||
                              kahve > 0 ||
                              pepsi > 0 ||
                              meyveSuyu > 0 ||
                              normalEtliekmek > 0 ||
                              sadeEtliekmek > 0 ||
                              peynirliEtliekmek > 0 ||
                              bicakArasi > 0) {
                            realMercimekCorba = mercimekCorba;
                            realDomatesCorba = domatesCorba;
                            realMantarCorba = mantarCorba;
                            realTavukSuyuCorba = tavukSuyuCorba;

                            realKofteIzgara = kofteIzgara;
                            realAdanaIzgara = adanaIzgara;
                            realTavukIzgara = tavukIzgara;
                            realKuzuIzgara = kuzuIzgara;

                            realBaklava = baklava;
                            realKunefe = kunefe;
                            realDondurma = dondurma;
                            realKazandibi = kazandibi;

                            realCay = cay;
                            realKahve = kahve;
                            realPepsi = pepsi;
                            realMeyveSuyu = meyveSuyu;

                            realNormalEtliekmek = normalEtliekmek;
                            realSadeEtliekmek = sadeEtliekmek;
                            realPeynirliEtliekmek = peynirliEtliekmek;
                            realBicakArasi = bicakArasi;

                            Route adsoyad = MaterialPageRoute(builder: (context) {
                              return AdSoyad();
                            });

                            Navigator.push(context, adsoyad);

                            //print("Tümünü ONAYLA basıldı");
                          } else {
                            setState(() {
                              uyari1 = "Bir şeyler seçmelisiniz.";
                            });
                          }
                        }),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class Corbalar extends StatefulWidget {
  @override
  _CorbalarState createState() => _CorbalarState();
}

class _CorbalarState extends State<Corbalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Çorbalar')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Mercimek Çorbası"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              mercimekCorba++;
                                            });

                                            //print("Mercimek + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(mercimekCorba.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (mercimekCorba > 0) {
                                                mercimekCorba--;
                                              }
                                            });
                                            //print("Mercimek - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Domates Çorbası"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              domatesCorba++;
                                            });

                                            //print("Domates + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(domatesCorba.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (domatesCorba > 0) {
                                                domatesCorba--;
                                              }
                                            });

                                            //print("Domates - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Mantar Çorbası"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              mantarCorba++;
                                            });

                                            //print("Mantar + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(mantarCorba.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (mantarCorba > 0) {
                                                mantarCorba--;
                                              }
                                            });

                                            //print("Mantar - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Tavuk Suyu Çorbası"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              tavukSuyuCorba++;
                                            });

                                            //print("Tavuk Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(tavukSuyuCorba.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (tavukSuyuCorba > 0) {
                                                tavukSuyuCorba--;
                                              }
                                            });

                                            //print("Tavuk Suyu - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("Ana Menü")),
                      onPressed: () {
                        Navigator.pop(context);

                        //print("Ana Menü tıklandı");
                      }))
            ])));
  }
}

class Izgaralar extends StatefulWidget {
  @override
  _IzgaralarState createState() => _IzgaralarState();
}

class _IzgaralarState extends State<Izgaralar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Izgaralar')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Köfte Izgara"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              kofteIzgara++;
                                            });

                                            //print("Köfte + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kofteIzgara.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kofteIzgara > 0) {
                                                kofteIzgara--;
                                              }
                                            });
                                            //print("Köfte - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Adana Izgara"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              adanaIzgara++;
                                            });

                                            //print("Adana + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(adanaIzgara.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (adanaIzgara > 0) {
                                                adanaIzgara--;
                                              }
                                            });

                                            //print("Adana - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Tavuk Izgara"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              tavukIzgara++;
                                            });

                                            //print("Tavuk + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(tavukIzgara.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (tavukIzgara > 0) {
                                                tavukIzgara--;
                                              }
                                            });

                                            //print("Tavuk - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Kuzu Izgara"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              kuzuIzgara++;
                                            });

                                            //print("Kuzu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kuzuIzgara.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kuzuIzgara > 0) {
                                                kuzuIzgara--;
                                              }
                                            });

                                            //print("Kuzu - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("Ana Menü")),
                      onPressed: () {
                        Navigator.pop(context);

                        //print("Ana Menü tıklandı");
                      }))
            ])));
  }
}

class Tatlilar extends StatefulWidget {
  @override
  _TatlilarState createState() => _TatlilarState();
}

class _TatlilarState extends State<Tatlilar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Tatlılar')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Baklava"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              baklava++;
                                            });

                                            //print("Baklava + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(baklava.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (baklava > 0) {
                                                baklava--;
                                              }
                                            });
                                            //print("Baklava - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Künefe"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              kunefe++;
                                            });

                                            //print("Künefe + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kunefe.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kunefe > 0) {
                                                kunefe--;
                                              }
                                            });

                                            //print("Künefe - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Dondurma"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              dondurma++;
                                            });

                                            //print("Dondurma + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(dondurma.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (dondurma > 0) {
                                                dondurma--;
                                              }
                                            });

                                            //print("Dondurma - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Kazandibi"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              kazandibi++;
                                            });

                                            // print("Kazandibi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kazandibi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kazandibi > 0) {
                                                kazandibi--;
                                              }
                                            });

                                            // print("Kazandibi - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("Ana Menü")),
                      onPressed: () {
                        Navigator.pop(context);

                        // print("Ana Menü tıklandı");
                      }))
            ])));
  }
}

class Icecekler extends StatefulWidget {
  @override
  _IceceklerState createState() => _IceceklerState();
}

class _IceceklerState extends State<Icecekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('İçecekler')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Çay"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              cay++;
                                            });

                                            // print("Çay + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(cay.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (cay > 0) {
                                                cay--;
                                              }
                                            });
                                            // print("Çay - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Kahve"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              kahve++;
                                            });

                                            // print("Kahve + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kahve.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kahve > 0) {
                                                kahve--;
                                              }
                                            });

                                            // print("Kahve - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Pepsi"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              pepsi++;
                                            });

                                            // print("Pepsi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(pepsi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (pepsi > 0) {
                                                pepsi--;
                                              }
                                            });

                                            // print("Pepsi - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Meyve Suyu"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              meyveSuyu++;
                                            });

                                            // print("Meyve Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(meyveSuyu.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (meyveSuyu > 0) {
                                                meyveSuyu--;
                                              }
                                            });

                                            // print("Meyve Suyu - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("Ana Menü")),
                      onPressed: () {
                        Navigator.pop(context);

                        // print("Ana Menü tıklandı");
                      }))
            ])));
  }
}

class Yoresel extends StatefulWidget {
  @override
  _YoreselState createState() => _YoreselState();
}

class _YoreselState extends State<Yoresel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Yöresel Yemekler')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Normal Etliekmek"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              normalEtliekmek++;
                                            });

                                            // print("normalEtliekmek + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(normalEtliekmek.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (normalEtliekmek > 0) {
                                                normalEtliekmek--;
                                              }
                                            });
                                            // print("normalEtliekmek - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Sade Etliekmek"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              sadeEtliekmek++;
                                            });

                                            // print("sadeEtliekmek + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(sadeEtliekmek.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (sadeEtliekmek > 0) {
                                                sadeEtliekmek--;
                                              }
                                            });

                                            // print("sadeEtliekmek - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Peynirli Etliekmek"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              peynirliEtliekmek++;
                                            });

                                            // print("PeynirliEtliekmek + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(peynirliEtliekmek.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (peynirliEtliekmek > 0) {
                                                peynirliEtliekmek--;
                                              }
                                            });

                                            // print("Peynirli Etliekmek - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Bıçak Arası"))),
                        Expanded(
                            flex: 2,
                            child: Center(
                                child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("+"),
                                          onPressed: () {
                                            setState(() {
                                              bicakArasi++;
                                            });

                                            // print("Bıçak Arası + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(bicakArasi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (bicakArasi > 0) {
                                                bicakArasi--;
                                              }
                                            });

                                            // print("Bıçak Arası - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("Ana Menü")),
                      onPressed: () {
                        Navigator.pop(context);

                        // print("Ana Menü tıklandı");
                      }))
            ])));
  }
}

class AdSoyad extends StatefulWidget {
  @override
  _AdSoyadState createState() => _AdSoyadState();
}

class _AdSoyadState extends State<AdSoyad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Ad, Soyad, Masa Numarası')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 1,
                  child: (Text(
                      "Adınızı, soyadınızı ve siparişinizin gelmesini istediğiniz masa numarasını giriniz.",
                      style: (TextStyle(fontSize: 20))))),
              Expanded(
                  flex: 1,
                  child: TextField(
                      onChanged: (string1) {
                        adSoyad = string1;
                      },
                      maxLength: 25,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adınızı ve Soyadınızı giriniz.'))),
              Expanded(
                  flex: 1,
                  child: TextField(
                      onChanged: (string2) {
                        masaNumara = string2;
                      },
                      maxLength: 3,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masa numaranızı giriniz.'))),
              Expanded(
                  flex: 1,
                  child: Center(
                      child: (Text(uyari2.toString(),
                          style: TextStyle(fontSize: 20))))),
              Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("ONAYLA")),
                      onPressed: () {
                        if (adSoyad.length > 0 && masaNumara.length > 0) {
                          realAdSoyad = adSoyad;
                          realMasaNumara = masaNumara;

                          Route foto = MaterialPageRoute(builder: (context) {
                            return Foto();
                          });
                          Navigator.push(context, foto);

                          setState(() {
                            uyari2 = "";
                          });
                        } else {
                          setState(() {
                            uyari2 = "Gerekli yerleri doldurunuz.";
                          });
                        }
                      })),
            ])));
  }
}

class Foto extends StatefulWidget {
  @override
  _FotoState createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  Future kameradanYukle() async {
    var alinanDosya = await ImagePicker().getImage(source: ImageSource.camera);

    x = File(alinanDosya.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Fotoğraf'), backgroundColor: Colors.pink),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Text(
                      "Lütfen masanızdaki peçeteliğin fotoğrafını çekiniz. Masa numaranız anlaşılabilir olmalıdır.",
                      style: TextStyle(fontSize: 20))),
              Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(uyari3.toString(),
                          style: TextStyle(fontSize: 20)))),
              Expanded(
                  flex: 4,
                  child: ElevatedButton(
                      child: Container(
                          color: Colors.deepOrange,
                          child: Text("FOTOĞRAF ÇEK")),
                      onPressed: () {
                        setState(() {
                          uyari3 = "";
                        });

                        kameradanYukle();
                      })),
              Expanded(
                  flex: 4,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("ONAY")),
                      onPressed: () {
                        if (x != null) {
                          realX = x;
                          Route sonuc = MaterialPageRoute(builder: (context) {
                            return Sonuc();
                          });
                          Navigator.push(context, sonuc);
                        } else {
                          setState(() {
                            uyari3 = "Fotoğraf çekiniz.";
                          });
                        }
                      })),
            ])));
  }
}

class Sonuc extends StatefulWidget {
  @override
  _SonucState createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Sonuç')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              if (realMercimekCorba > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Mercimek Çorbası : " + realMercimekCorba.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realDomatesCorba > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Domates Çorbası : " + realDomatesCorba.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realMantarCorba > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Mantar Çorbası : " + realMantarCorba.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realTavukSuyuCorba > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Tavuk Suyu Çorbası : " +
                            realTavukSuyuCorba.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realKofteIzgara > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Köfte Izgara : " + realKofteIzgara.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realAdanaIzgara > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Adana Izgara : " + realAdanaIzgara.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realTavukIzgara > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Tavuk Izgara : " + realTavukIzgara.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realKuzuIzgara > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Kuzu Izgara : " + realKuzuIzgara.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realBaklava > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Baklava : " + realBaklava.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realKunefe > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Künefe : " + realKunefe.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realDondurma > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Dondurma : " + realDondurma.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realKazandibi > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Kazandibi : " + realKazandibi.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realCay > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Çay : " + realCay.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realKahve > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Kahve : " + realKahve.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realPepsi > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Pepsi : " + realPepsi.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realMeyveSuyu > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Meyve Suyu : " + realMeyveSuyu.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realNormalEtliekmek > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Normal Etliekmek : " +
                            realNormalEtliekmek.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realSadeEtliekmek > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Sade Etliekmek : " + realSadeEtliekmek.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realPeynirliEtliekmek > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Peynirli Etliekmek : " +
                            realPeynirliEtliekmek.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realBicakArasi > 0)
                Expanded(
                    flex: 1,
                    child: Text("* Bıçak Arası : " + realBicakArasi.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realAdSoyad.length > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Adınız ve Soyadınız : " + realAdSoyad.toString(),
                        style: TextStyle(fontSize: 12))),
              if (realMasaNumara.length > 0)
                Expanded(
                    flex: 1,
                    child: Text(
                        "* Masa numaranız : " + realMasaNumara.toString(),
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              if (realX != null) Expanded(flex: 15, child: Image.file(realX)),
              Expanded(
                  flex: 10,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("SON ONAY")),
                      onPressed: () {
                        ontomercimekCorba = realMercimekCorba;
                        ontodomatesCorba = realDomatesCorba;
                        ontomantarCorba = realMantarCorba;
                        ontotavukSuyuCorba = realTavukSuyuCorba;

                        ontokofteIzgara = realKofteIzgara;
                        ontoadanaIzgara = realAdanaIzgara;
                        ontotavukIzgara = realTavukIzgara;
                        ontokuzuIzgara = realKuzuIzgara;

                        ontobaklava = realBaklava;
                        ontokunefe = realKunefe;
                        ontodondurma = realDondurma;
                        ontokazandibi = realKazandibi;

                        ontocay = realCay;
                        ontokahve = realKahve;
                        ontopepsi = realPepsi;
                        ontomeyveSuyu = realMeyveSuyu;

                        ontonormalEtliekmek = realNormalEtliekmek;
                        ontosadeEtliekmek = realSadeEtliekmek;
                        ontopeynirliEtliekmek = realPeynirliEtliekmek;
                        ontobicakArasi = realBicakArasi;

                        ontomasaNumara = realMasaNumara;
                        ontoadSoyad = realAdSoyad;
                        ontox = realX;

                        Route bilgi = MaterialPageRoute(builder: (context) {
                          return Bilgi();
                        });
                        Navigator.push(context, bilgi);

                        /*
                            if (ontomercimekCorba > 0) {
                              print("Mercimek Çorbası : " +
                                  ontomercimekCorba.toString());
                            }
                            if (ontodomatesCorba > 0) {
                              print("Domates Çorbası : " +
                                  ontodomatesCorba.toString());
                            }
                            if (ontomantarCorba > 0) {
                              print(
                                  "Mantar Çorbası : " + ontomantarCorba.toString());
                            }
                            if (ontotavukSuyuCorba > 0) {
                              print("Mantar Çorbası : " +
                                  ontotavukSuyuCorba.toString());
                            }

                            if (ontokofteIzgara > 0) {
                              print("Köfte Izgara : " + ontokofteIzgara.toString());
                            }
                            if (ontoadanaIzgara > 0) {
                              print("Adana Izgara : " + ontoadanaIzgara.toString());
                            }
                            if (ontotavukIzgara > 0) {
                              print("Tavuk Izgara : " + ontotavukIzgara.toString());
                            }
                            if (ontokuzuIzgara > 0) {
                              print("Kuzu Izgara : " + ontokuzuIzgara.toString());
                            }

                            if (ontobaklava > 0) {
                              print("Baklava : " + ontobaklava.toString());
                            }
                            if (ontokunefe > 0) {
                              print("Künefe : " + ontokunefe.toString());
                            }
                            if (ontodondurma > 0) {
                              print("Dondurma : " + ontodondurma.toString());
                            }
                            if (ontokazandibi > 0) {
                              print("Kazandibi : " + ontokazandibi.toString());
                            }

                            if (ontocay > 0) {
                              print("Çay : " + ontocay.toString());
                            }
                            if (ontokahve > 0) {
                              print("Kahve : " + ontokahve.toString());
                            }
                            if (ontopepsi > 0) {
                              print("Pepsi : " + ontopepsi.toString());
                            }
                            if (ontomeyveSuyu > 0) {
                              print("Meyve Suyu : " + ontomeyveSuyu.toString());
                            }

                            if (ontonormalEtliekmek > 0) {
                              print("Normal Etliekmek : " + ontonormalEtliekmek.toString());
                            }
                            if (ontosadeEtliekmek > 0) {
                              print("Sade Etliekmek : " + ontosadeEtliekmek.toString());
                            }
                            if (ontopeynirliEtliekmek > 0) {
                              print("Peynirli Etliekmek : " + ontopeynirliEtliekmek.toString());
                            }
                            if (ontobicakArasi > 0) {
                              print("Bıçak Arası : " + ontobicakArasi.toString());
                            }

                            print(ontoadSoyad);
                            print(ontomasaNumara);
                            print(ontox);
                            */
                      })),
            ])));
  }
}

class Bilgi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Hakkında"), backgroundColor: Colors.green),
            backgroundColor: Colors.yellow,
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                  Expanded(
                      flex: 4,
                      child: Center(
                          child: Text("Bu uygulama Dr. Öğretim Üyesi Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamından 193301058 numaralı Muhsin Fatih Günay tarafından 30 Nisan 2021 günü yapılmıştır.",
                              style: TextStyle(fontSize: 15)))),
                  Expanded(
                      flex: 2,
                      child: TextButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                            child: Container(decoration: BoxDecoration(

                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15.0),
                                     child: Text("BİTTİ",style: TextStyle(fontSize:30),),
                                   )),

                            onPressed: () {
                              x = null;
                              //realX = null;
                              //ontox = null;

                              adSoyad = "";
                              //realAdSoyad = "";
                              //ontoadSoyad = "";

                              masaNumara = "";
                              //realMasaNumara = "";
                              //ontomasaNumara = "";

                              Navigator.pop(context);
                              Navigator.pop(context, Sonuc);
                              Navigator.pop(context, Foto);
                              Navigator.pop(context, AdSoyad);
                            }),
                      )
                ]))));
  }
}
