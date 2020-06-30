import 'package:flutter/material.dart';
import 'texteditorcomponent.dart';
import 'dropdown.dart';

final TextEditingController nc = new TextEditingController();
final TextEditingController ec = new TextEditingController();
final TextEditingController pc = new TextEditingController();
final TextEditingController cc = new TextEditingController();
final TextEditingController clc = new TextEditingController();
final TextEditingController lc = new TextEditingController();
final TextEditingController bc = new TextEditingController();

ShowDialog(BuildContext context) {
  Dialog dialog = Dialog(
    backgroundColor: Colors.white,
    child: Container(
      width: MediaQuery.of(context).size.width,
      child:
          //color: Colors.lightBlueAccent,
          SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Container(
                width: 240.0,
                height: 30.0,
                alignment: Alignment.center,
                color: Colors.pinkAccent,
                child: Text(
                  'Register Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor('Name', 'eg:- Risabh', Icons.person, nc)),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor(
                      'Mobile No.', 'eg:- +91 1234567890', Icons.phone, pc)),
              Container(
                  padding: EdgeInsets.all(12),
                  child:
                      TextEditor('Email', 'name@domain.com', Icons.mail, ec)),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor(
                      '1st Priority college', 'eg:-IIT', Icons.school, clc)),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor(
                      '2st Priority college', 'eg:-NIT', Icons.school, clc)),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor(
                      'Location', 'eg:-Bhubaneshwar', Icons.location_on, lc)),
              Container(
                  padding: EdgeInsets.all(12),
                  child: TextEditor(
                      'Budget', 'eg:-1 lack', Icons.attach_money, bc)),
              Container(
                  padding: EdgeInsets.all(12),
                  width: 300,
                  child: Expanded(child: DropDown())),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("APPLY"),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    ),
  );
  showDialog(context: context, builder: (BuildContext context) => dialog);
}
