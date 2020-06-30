import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  @override
  _TextComponentState createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    return new Text(
      "SUBMIT",
      style: TextStyle(
          color: Colors.pink.shade300,
          fontSize: 16.0,
          //fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600),
    );
  }
}
