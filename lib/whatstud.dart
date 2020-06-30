import 'package:flutter/material.dart';

class WhatStud extends StatefulWidget {
  String name;
  String img;
  WhatStud(this.name, this.img);
  @override
  _WhatStudState createState() => _WhatStudState(name, img);
}

class _WhatStudState extends State<WhatStud> {
  String name;
  String img;
  _WhatStudState(this.name, this.img);
  // final TextEditingController _name = new TextEditingController();
  //String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6),
        height: 180,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Stack(
            children: <Widget>[
              //Container(height: 50,width: 400,color: Colors.red,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 350,
                  height: 100,
                  child: Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color:Colors.red,),
                  ),
                ),
              ),
              Positioned(
                top:20,
                //left: 110,
                child: Container(
                  width:320 ,
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(img),
                      radius: 44,
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(13))));
  }
}
