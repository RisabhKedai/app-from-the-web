import 'package:flutter/material.dart';

class Fact extends StatefulWidget {
  String numa;
  String des;
  var ic;
  Fact(this.numa, this.des, this.ic);
  @override
  _FactState createState() => _FactState(numa, des, ic);
}

class _FactState extends State<Fact> {
  String numa;
  String des;
  var ic;
  _FactState(this.numa, this.des, this.ic);
  // final TextEditingController _name = new TextEditingController();
  String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(ic,size: 68,color: Colors.white,),
          Text('+'+numa,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          Text(des,style: TextStyle(color: Colors.white,fontSize: 15),)],
      ),
      decoration: BoxDecoration(color: Colors.lightBlue.shade500,
      borderRadius: BorderRadius.all(Radius.circular(13)))
    );
  }
}
