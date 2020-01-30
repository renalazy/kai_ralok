import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ProfileApp());
  });
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFF8FFFF),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("images/asset-1.png"),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Roufah",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "PNC STL 1.13 JNG ",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 40.0),
                            height: 40.0,
                            width: 85.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black12),
                            child: Center(
                              child: Text(
                                "BACK",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text(
                            "Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            "Panduan Pengguna",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            "Frequently Asked Question (FAQ)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            "Hubungi Kami",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            "Ubah Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black54),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
