import 'package:flutter/material.dart';
// ignore: camel_case_types
class child1 extends StatelessWidget {
  child1(this.icon,this.type,this.color);
  final IconData icon;
  final String type;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: color
          ,size: 80,),
        SizedBox(height: 15,),
        Text(type,style: TextStyle( fontSize: 20,color:color,
        ),)

      ],);
  }
}
