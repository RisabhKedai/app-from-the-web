import 'package:directadmission360/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class OurServ extends StatefulWidget {
  String head;
  String des;
  OurServ(this.head, this.des);
  @override
  _OurServState createState() => _OurServState(head, des);
}

class _OurServState extends State<OurServ> {
  String head;
  String des;
  _OurServState(this.head, this.des);
  // final TextEditingController _name = new TextEditingController();
  //String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            right:7,
            bottom: 7,
            child: Container(
              padding: EdgeInsets.all(10),
              //alignment: FractionalOffset.centerRight,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Container(
                color: Colors.transparent,
                alignment: Alignment.centerRight,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        head,
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        des,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    MyFlutterApp.hands_helping,
                    color: Colors.white,
                  ),
                  radius: 22,
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
      ),
    );
  }
}
