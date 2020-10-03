import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {

@override
_SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha>{
  int n=0;

  List<String> x= ["سبحان الله","الحمد لله","لا اله الا الله","الله اكبر"];
  List<int> z=[0,0,0,0];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Text("reset"),backgroundColor: Colors.indigo,onPressed: (){setState(() {
        z[0]=z[1]=z[2]=z[3]=0;
      });},),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.home),onPressed: (){Navigator.pop(context);},),
      //    actions: <Widget>[
       // FlatButton(child:Column(children: <Widget>[ Icon(Icons.library_books,size: 20,color: Colors.white,),Text("الاجمالي")]))],

        backgroundColor: Colors.indigo,centerTitle: true,
    title: Text("السبحه الالكترونيه",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
    body: Container(margin: EdgeInsets.all(8),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,children: <Widget>[
          FlatButton(onPressed:(){setState(() {
            if(n>0)
            n--;
          });},child:
            Icon(Icons.arrow_back_ios,size: 45,),),
          Container(padding: EdgeInsets.only(top:10,bottom: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo,width: 2),borderRadius: BorderRadius.circular(20)),
              child: Text( "${x[n]}",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
          FlatButton(onPressed:(){setState(() {
            if(n+1<x.length)
            n++;
          });},child: Icon(Icons.arrow_forward_ios,size: 45,))],),
          SizedBox(height: 15,),
          Center(child: Text("${z[n]}",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),),
        SizedBox(height: 20,),
        Expanded(
          child: SingleChildScrollView(child: Align(alignment: Alignment.bottomCenter,child:
          FlatButton(onPressed: (){setState(() {
            z[n]++;
          });},child:  CircleAvatar(
            child: Icon(Icons.add),radius: 200,backgroundColor:Colors.indigo,)
          )
          ),
        )
        )  ],),),

    );

  }
}






    /*Scaffold(
      bottomSheet: Container(child: FlatButton(color: Colors.black,
        onPressed: (){setState(() {
        n++;
      });},),),
      body: Center(child: ListView.builder(
      itemBuilder: (context, index){
        return  Card(child: Container(child: x[n]));},
      addAutomaticKeepAlives: true,itemCount: 1,
      scrollDirection: Axis.horizontal,itemExtent: 400,    )),);

  }
}
*/