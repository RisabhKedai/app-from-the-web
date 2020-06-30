import 'package:flutter/material.dart';
import 'texteditorcomponent.dart';
import 'package:url_launcher/url_launcher.dart';
import 'whychoose.dart';
import 'my_flutter_app_icons.dart';
import 'latestbutton.dart';
import 'facts.dart';
import 'whatstud.dart';
import 'ourservices.dart';
import 'button.dart';
import 'dropdown.dart';
import 'nextwin.dart';
import 'dropbutton.dart';
import 'diaform.dart';

//function to convert strings to widgets
List<Widget> callThat(List<String> lisa) {
  List<Widget> widlis = [];
  int i = 0;
  while (i < lisa.length) {
    var con = Container(
      padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
      child: RaisedButton(
        onPressed: () {
          print(lisa[i]);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Colors.red.shade600,
            width: 3.0,
          ),
        ),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Text(
              lisa[i],
              style: TextStyle(
                color: Colors.red.shade600,
              ),
            ),
          ],
        ),
      ),
    );
    widlis.add(con);
    i++;
  }
  return widlis;
}

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final TextEditingController nc = new TextEditingController();
final TextEditingController ec = new TextEditingController();
final TextEditingController pc = new TextEditingController();
final TextEditingController cc = new TextEditingController();

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    //ShowDialog(context);
    return new Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(7.0),
            child: Text(
              'DIRECT ADMISSION 360',
              style: TextStyle(
                fontSize: 13.0,
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
                ShowDialog(context);
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //image logo of 360
            Container(
              margin: EdgeInsets.all(7),
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            Column(
              children: <Widget>[
                //the slidelist
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            onPressed: () => print('home'),
                            color: Colors.red.shade600,
                            child: Text(
                              'HOME',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () => print('aboutus'),
                            child: Text(
                              'ABOUT US',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () => print('aboutus'),
                            child: Text(
                              'COUNSELLING',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonDrop(
                                    callThat(
                                      ['B TECH', 'M TECH'],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'ENGINEERING',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonDrop(
                                    callThat(
                                      ['MBBS', 'DENTAL', 'AYUSH', 'PG'],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'MEDICAL',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonDrop(
                                    callThat(
                                      ['BBA', 'BCOM', 'MBA'],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'BUSSINESS',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonDrop(
                                    callThat(
                                      [
                                        'LLB(BBA/BA)',
                                        'BA/MA',
                                        'B.SC/M.SC',
                                        'PHD',
                                        'FASHIONDESIGNING',
                                        'ANIMATION'
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'OTHER COURSES',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonDrop(
                                    callThat(
                                      ['ENGINEERING', 'BUSINES', 'MEDICAL'],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'FOREIGN ADMISSION',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            color: Colors.red.shade600,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            },
                            child: Text(
                              'CONTACT US',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // banners container
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(3),
                          onPressed: () => print('banner1'),
                          child: Image(
                            width: MediaQuery.of(context).size.width,
                            height: 390,
                            image: AssetImage('images/banner1.jpg'),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(3),
                          onPressed: () => print('banner3'),
                          child: Image(
                            height: 390,
                            width: MediaQuery.of(context).size.width,
                            image: AssetImage('images/banner3.jpg'),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(3),
                          onPressed: () => print('banner2'),
                          child: Image(
                            width: MediaQuery.of(context).size.width,
                            height: 390,
                            image: AssetImage('images/banner2.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //our services
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blue.shade200,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'OUR SERVICES ',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      OurServ('Career Counselling',
                          'Team with 50+ Career Councellors having 8 years of combined expertise.'),
                      OurServ('College Selection',
                          '10,000+ free online resources to get your DREAM COLLEGE.'),
                      OurServ('Overseas Education',
                          'one-stop destination for 90+ overseas education partners'), // making us a Admission Abraod.'),
                      OurServ('Scholarship Assistance',
                          'Dedicated Team to hep you get over 5000+scholarship Programs.'),
                      OurServ('Budget Friendly Packages',
                          "We satisfy you by bringing budgets that suit you most."),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                //the reg form
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'REGISTER NOW:-',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/divider.jpg'),
                        width: 50,
                        margin: EdgeInsets.all(5),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 400.0,
                        height: 80,
                        child:
                            TextEditor('Name', 'eg:-Risabh', Icons.people, nc),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 400.0,
                        height: 80,
                        child: TextEditor(
                            'E-mail', 'eg:-name@example.com', Icons.mail, ec),
                      ),
                      Container(
                          padding: EdgeInsets.all(10.0),
                          width: 400.0,
                          height: 80,
                          child: TextEditor('Phone number',
                              'eg:-+91 1234567890', Icons.phone, pc)),
                      Container(
                          padding: EdgeInsets.all(10.0),
                          width: 400.0,
                          height: 80,
                          child: DropDown()),
                      Container(
                        child: Button(),
                        padding: EdgeInsets.all(10.0),
                        width: 200.0,
                        height: 60,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.0),
                    ),
                  ),
                ),
                //why choose us
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blue.shade200,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'WHY CHOOSE US ?',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      WhyChoose(
                          'GENUINE & RELAIBLE',
                          'Best admission consultancy for direct admission and management quota seats information.',
                          Icons.thumb_up),
                      WhyChoose(
                          'AFFORDABLE SERVICE',
                          'Our services are an affordable investment which provide you what you expect.',
                          Icons.attach_money),
                      WhyChoose(
                          'YEARS OF EXPERIENCE',
                          'After many years of experience we have developed value',
                          MyFlutterApp.trophy),
                      WhyChoose(
                          'PROFESSIONAL SUPPORT',
                          'You are choosing a lifetime guarantee of care and freindly-support',
                          Icons.chat),
                      Container(
                        padding: EdgeInsets.all(14),
                        alignment: Alignment.centerRight,
                        child: OutlineButton(
                          color: Colors.white,
                          onPressed: () => print('work with us'),
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          child: Text(
                            'Work With Us',
                            style: TextStyle(color: Colors.pinkAccent),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                //TRENDING NOW
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blue.shade200,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'TRENDING NOW',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 14),
                        alignment: Alignment.center,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage("images/Top.jpg"),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(13),
                          child: Text(
                            'Top 10 Government Medical Colleges Under NEET: By NIRF, India Today, The Week & More!!',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                //Fact Sheets
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blue.shade200,
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                      alignment: Alignment.topCenter,
                      child: Text(
                        ' THE FACT SHEETS',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      alignment: Alignment.topCenter,
                      child: Image.asset('images/divider.jpg'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Fact('10', 'FRANCHISE', MyFlutterApp.account_balance),
                          Fact('50', 'EXPERT COUNCELLORS', MyFlutterApp.person),
                          Fact('100', 'MOU SIGNED COLLEGES',
                              MyFlutterApp.school),
                          Fact('120', 'COURSES', MyFlutterApp.book),
                          Fact('5100', "STUDENTS COUNCELLED",
                              MyFlutterApp.user_graduate),
                        ],
                      ),
                    ),
                  ]),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade500,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                //OUR WORKS
                Container(
                  child: Column(
                    children: <Widget>[
                      Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'OUR WORKS',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.topCenter,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              child: Image.asset('images/bb.png'),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              child: Image.asset('images/cim.png'),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              child: Image.asset('images/flwr.png'),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              child: Image.asset('images/gitm.png'),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              child: Image.asset('images/iamr.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                //LATEST BLOGS AND EVENTS
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blue.shade200,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 13),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'LATEST BLOGS AND EVENTS',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 16),
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            LatestButton(
                                'images/late1.jpg',
                                'What if not satisfied with JEE main score ?',
                                'Blogdetails1.php'),
                            SizedBox(width: 20),
                            LatestButton(
                                'images/late2.jpg',
                                '7 easy steps for a better career option ',
                                'Blogdetails2.php'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          LatestButton(
                              'images/late3.jpg',
                              'Why Indian students worry to choose the right career ?',
                              'Blogdetails3.php'),
                          SizedBox(width: 20),
                          LatestButton(
                              'images/late4.jpg',
                              ' Five tips for finding the perfect private tutor for your child ',
                              'Blogdetails4.php'),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(14),
                        alignment: Alignment.centerRight,
                        child: OutlineButton(
                          color: Colors.white,
                          onPressed: () => launch(
                              'https://www.directadmission360.com/Blog.php'),
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          child: Text(
                            'More Blogs',
                            style: TextStyle(color: Colors.pinkAccent),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                //what students say
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 17, 17, 0),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'WHAT STUDENTS SAY ABOUT US',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17, 20, 0, 0),
                        alignment: Alignment.topCenter,
                        child: Image.asset('images/divider.jpg'),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            WhatStud('ASFA FARZEEN', 'images/afsa.jpg'),
                            WhatStud('ANUSHKA SINGH', 'images/anushka.jpg'),
                            WhatStud('VANSHIKA SHARMA', 'images/vanshika.jpg'),
                            WhatStud('ROHIT  CHAUDHARY', 'images/rohit.jpg'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/studback.jpg'),
                    ),
                  ),
                ),
                // the imp links
                Container(
                  color: Colors.grey.shade800,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'IMPORTANT LINKS',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        //color: Colors.amber,
                        //padding: EdgeInsets.all(3.0),
                        child: Divider(color: Colors.grey.shade400),
                        width: 40.0,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    'BLOGS',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  onTap: () => launch(
                                      'https://www.directadmission360.com/Blog.php'),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  child: Text(
                                    'PRIVACY POLICY',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  onTap: () => launch(
                                      'https://www.directadmission360.com/privacy-policy.php'),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    '    TRENDING',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  onTap: () => launch(
                                      'https://www.directadmission360.com/trending.php'),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  child: Text(
                                    'TERMS & CONDITIONS',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  onTap: () => launch(
                                      'https://www.directadmission360.com/Terms%20and%20Conditions.php'),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // the copyright
                Align(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30.0,
                      //padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "\u00a9  2020-21 Direct admission  360 ",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      color: Colors.grey.shade700),
                  alignment: FractionalOffset.bottomCenter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<TextEditingController> contlis = [nc, pc, ec, cc];

class contLis {
  TextEditingController nc = contlis[0];
  TextEditingController pc = contlis[1];
  TextEditingController cc = contlis[2];
  TextEditingController ec = contlis[3];
}
/*Container(color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: Column(children: <Widget>[RichText(text: TextSpan(children: [WidgetSpan(child: Icon(Icons.thumb_up,size:14,),),TextSpan(text: 'GENUINE & RELAIBLE'),],),),],),),*/
/* TextEditor(
                              'Select Course', 'eg: B.Tech', Icons.book, cc)*/
