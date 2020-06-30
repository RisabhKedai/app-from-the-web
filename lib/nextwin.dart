import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(7.0),
            child: Text(
              'DIRECT ADMISSION 360',
              style: TextStyle(
                fontSize: 9.0,
                color: Colors.red.shade600,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.red.shade600,
        actions: <Widget>[
          Container(
            height: 23.0,
            padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
            child: RaisedButton(
              onPressed: () {
                print('apple');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 5.0,
                ),
              ),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Text(
                    'Apply Now',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(40),
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 8271103879',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'admin@directadmission360.com',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Bengaluru, India',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// RaisedButton(
//               onPressed: () {
//                 print('76675764');
//               },
//               child: Text('Go back!'),
//             ),
