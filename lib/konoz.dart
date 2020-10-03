import 'dart:ui';

import 'package:azkar/KanzContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';


import 'AzkarElsabah.dart';
class Konoz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.orangeAccent,
            title: Center(child:
          Text("كنوز الجنات",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black), )),),
          body: ListView(
        children: <Widget>[
            Container(margin: EdgeInsets.all(10),
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20)
                  ,image: DecorationImage(image: AssetImage("assets/kanz.png"),fit: BoxFit.scaleDown ),border: Border.all(color: Colors.black),
                  color: Colors.grey.shade200.withOpacity(0.5)) ,
              child: ExpansionCard(

           /* title: Container
              (child:Text("كنز من كنوز الجنه",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold))),*/

              backgroundColor:   Colors.grey.shade200.withOpacity(.7),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Text("لا حول ولا قوه الا بالله كنز من كنوز الجنه ",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),

                ListTile(trailing: Text("1",style: TextStyle(color:Color(0xffF17F42),fontSize: 15),),
                  title: FlatButton(

                      child: Container(width: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 0)
                            ,borderRadius: BorderRadius.circular(50)),
                        child: CircleAvatar(backgroundColor: Color(0xffF17F42),child: Icon(Icons.add)
                          ,foregroundColor: Colors.white,),
                      ),

                      onPressed:null
                  ),
                ),
              ],
          ),
            ),



        ],
      )


        ),

    );
  }



}