import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import 'package:flutter/widgets.dart';

import 'Zekr_Content.dart';

class AzkarBody extends StatefulWidget {
  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<AzkarBody> {
  List<int> count = [
    3,
    3,
    3,
    3,
    1,
    1,
    3,
    4,
    1,
    7,
    3,
    1,
    1,
    1,
    1,
    1,
    1,
    3,
    1,
    3,
    10,
    3,
    3,
    3,
    3,
    3
  ];
  List<String> zekr = [
    "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
    "(قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْsdffffffffffffffffffffffffffffffffffffffffffffffffffff يَكُن لَّهُ كُفُوًا أَح",
    "(قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ",
    "قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ"
  ];
  Color main = Colors.red[700];
  Color c =  Colors.red[700];
  int x = 0;
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            color: Colors.white,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: main,
                  centerTitle: true,
                  title: Text(
                    "أزكار المساء",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                backgroundColor: Colors.transparent,
                body: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Container(



                          height: 230,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 55,right: 40,left: 40,top: 60),




                                  child: SingleChildScrollView(
                                    child: AutoSizeText(
                                      "${zekr[n]}",
                                      textAlign: TextAlign.center,
                                      maxLines: 20,
                                      minFontSize: 15,maxFontSize: 30,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                          ),


                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/frame.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Card(
                                  color: main,
                                  child: FlatButton(onPressed: (){setState(() {
                                    if(n>0){
                                      n--;
                                    }

                                  });},
                                    child: Text(
                                      "السابق",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),

                                  )),
                              CircleAvatar(
                                radius: 45,
                                child: Text(
                                  "$x/${count[n]}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                backgroundColor: c,
                              ),
                              Card(
                                  color: main,
                                  child: FlatButton(onPressed: (){setState(() {


                                    if(n<zekr.length-1){
                                     c=main;
                                      x=0;
                                      n++;

                                    } });
                                  },
                                    child: Text(
                                      "التالي",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),

                                  ))
                            ],
                          ),
                        ),
                        Container(
                            child: Expanded(
                                child: Container(
                                    margin: EdgeInsets.all(30),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Card(
                                            color: main,
                                            child: FlatButton(onPressed: (){setState(() {
                                              if(count[n]-1==x){
                                                x++;
                                                c=Colors.green[800];
                                              }else if(x<count[n]) {
                                                x++;

                                              }

                                            });},
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              padding: EdgeInsets.only(
                                                  left: 50, right: 50),
                                            ))))))
                      ],
                    ),
                  ),
                ))));
  }
}
