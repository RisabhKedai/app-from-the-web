import 'dart:math';
//import 'package:validators/validators.dart';
import 'package:flutter/material.dart';
import 'text.dart';
import 'home.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

// List<String> lis = [
//   'images/greatbody.jpg',
//   'images/noresult.png',
//   'images/Obese.png',
//   'images/Overweight.png',
//   'images/underweight.png'
// ];

//int k;
String mess = '';

//variables for calc
void getVal() {
  contLis contobj = new contLis();
  //String mess = ",BMI: ";
  if ((contobj.nc.text.isEmpty ||
      contobj.pc.text.isEmpty ||
      contobj.ec.text.isEmpty ||
      contobj.cc.text != '--Please Select Course--')) {
    mess = "Please Enter All The fields!!";
    //k = 1;
  } else {
    mess = 'You are now Registered !';
  }
}
//end calc

class _ButtonState extends State<Button> {
  ShowDialog(BuildContext context) {
    getVal();
    Dialog dialog = Dialog(
      backgroundColor: Colors.white,
      child: Container(
        //color: Colors.lightBlueAccent,
        width: 20.0,
        height: 150.0,
        child: Column(
          children: [
            Container(
              width: 240.0,
              height: 30.0,
              alignment: Alignment.center,
              color: Colors.pinkAccent,
              child: Text(
                'Result',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: Text(
                mess,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OKay"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (BuildContext context) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => ShowDialog(context),
      child: TextComponent(),
      color: Colors.grey.shade700,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    );
  }
}
