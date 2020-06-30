import 'package:flutter/material.dart';

class WhyChoose extends StatefulWidget {
  String head;
  String des;
  var ic;
  WhyChoose(this.head, this.des, this.ic);
  @override
  _WhyChooseState createState() => _WhyChooseState(head, des, ic);
}

class _WhyChooseState extends State<WhyChoose> {
  String head;
  String des;
  var ic;
  _WhyChooseState(this.head, this.des, this.ic);
  // final TextEditingController _name = new TextEditingController();
  String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(ic, size: 30),
                ),
                TextSpan(
                  text: "  "+head,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Center(child: Text("   "+des,style: TextStyle(fontSize: 16,height:1.4),))
        ],
      ),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(13)))
    );
  }
}
