
import 'package:azkar/AzkarElmasa.dart';
import 'package:azkar/AzkarElsabah.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'konoz.dart';
import 'reusable_card.dart';
import 'card_content.dart';
import 'sebha.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {



  @override
  Widget build(BuildContext context) {
    return

     Scaffold(
          appBar: AppBar(
            title: Text("للذاكرين والذاكرات" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            centerTitle: true,backgroundColor: Colors.greenAccent[200],
          ),
          body: Container(
            child: ListView(
              children: <Widget>[



                    Container(
                      child: GestureDetector(
                      onTap:(){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return new AzkarElsabah();
                          }),);
                },
                        child: reusablecard(
                            Colors.lightBlue,
                          child1(Icons.wb_sunny,"أزكار الصباح",Colors.white)

                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(

                      onTap: (){ Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return new AzkarElmasa();
                        }),);},


                        child: reusablecard(
                    Colors.cyanAccent
                        ,child1(FontAwesomeIcons.cloudMoon,"اذكار المساء",Colors.black)),
                      ),
                    )
                  ,

                Container(

                      child: GestureDetector(
                        onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return new Konoz();
                          }),);},
                        child: reusablecard(Colors.orangeAccent,
                        child1(FontAwesomeIcons.box,"كنوز الجنه",Colors.white)),
                      ),
                    ),
                    Container(

                      child: GestureDetector(
                        onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return new Sebha();
                          }),);},
                        child: reusablecard(Colors.indigo,
                          child1(FontAwesomeIcons.sortNumericUp,"سبحه الكترونيه",Colors.white)


    ),
                      )

                      ),

                  ],
                ),




                )

            );
  }
}


