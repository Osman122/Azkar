import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Zekr_content extends StatelessWidget {
  var StartNum;
  int Endnum;
  String Zekr;



  final Function x;

  Zekr_content({this.StartNum, this.Endnum, this.Zekr, this.x, });

  @override
  Widget build(BuildContext context) {
    return Container
      (
        padding: EdgeInsets.only(top: 12,left: 10,  right: 10,bottom: 0),
        margin: EdgeInsets.all(15),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            AutoSizeText("$Zekr",textAlign: TextAlign.center,maxLines: 7
              ,minFontSize: 20,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),


                      ListTile(trailing: Text("$StartNum",style: TextStyle(color:Color(0xffF17F42),fontSize: 15),),
                        title: FlatButton(

                            child: Container(width: 30,
                         decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 0)
                 ,borderRadius: BorderRadius.circular(50)),
                              child: CircleAvatar(backgroundColor: Color(0xffF17F42),child: Icon(Icons.add)
                              ,foregroundColor: Colors.white,),
                            ),

                            onPressed:x
                        ),
                      ),


            ]),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20.0),


        color: Colors.white,
          boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],)


    );
  }
}