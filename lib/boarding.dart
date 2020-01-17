import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kai_ralok/login.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(BoardingApp());
  });
}

class BoardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoardingPage(),
    );
  }
}

class BoardingPage extends StatefulWidget {
  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  @override
  Widget build(BuildContext context) {
    final bodyContent = Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg_boarding.jpg'),
                  fit: BoxFit.cover)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/loko-logo.png',
              height: 200.0,
              width: 200.0,
            ),
            SizedBox(
              height: 35.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Center(
                child: Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 4.0),
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 4.0),
                  ),
                  child: Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        )
      ],
    );

    return Scaffold(
      body: bodyContent,
    );
  }
}
