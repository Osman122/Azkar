import 'dart:async';


import 'package:azkar/body.dart';
import 'package:flutter/material.dart';
class Splash extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Timer(

      Duration(seconds: 4),(){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return new InputPage();
        }),);
    }
    );
    // TODO: implement build
    return
       
       Container(color:Colors.white,padding:EdgeInsets.all(20),child: Center(child: Image(image: AssetImage("assets/logo.png"),fit: BoxFit.scaleDown,),),);


  }

}