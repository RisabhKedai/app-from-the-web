import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LatestButton extends StatefulWidget {
  String img;
  String text;
  String link;
  LatestButton(this.img, this.text, this.link);
  @override
  _LatestButtonState createState() => _LatestButtonState(img, text, link);
}

class _LatestButtonState extends State<LatestButton> {
  String img;
  String text;
  String link;
  _LatestButtonState(this.img, this.text, this.link);
  // final TextEditingController _name = new TextEditingController();
  String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            onPressed: () =>
                launch("https://www.directadmission360.com/" + link),
            child: ClipRRect(
              child: Image(
                image: AssetImage(img),
                height: 100,
                width: 100,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(3),
            width:131,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
