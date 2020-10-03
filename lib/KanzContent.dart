import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KanzContent extends StatelessWidget{
  int count;
  String zekr,img;
  KanzContent({this.count,this.zekr,this.img});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body: Container(margin: EdgeInsets.all(20),
      child: Center(
        child: Column(children: <Widget>[Expanded(child: Image.asset("assets/$img.png"))
        ,Text("$count",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),
          ),SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4),

              borderRadius: BorderRadius.circular(35.0),

            ),
              child: FlatButton
            (child:Text( "$zekr",style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),)
              ,onPressed: () {
                count++;                                                              
                print(count);
              },),
          )

        ],),
      ),
    ),));
  }


}