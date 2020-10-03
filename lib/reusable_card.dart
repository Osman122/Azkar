import 'package:flutter/material.dart';
class reusablecard extends StatelessWidget {

  reusablecard(@required this.colour ,@required this.cardChild);
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
