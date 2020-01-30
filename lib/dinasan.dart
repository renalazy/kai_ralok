import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(DinasanApp());
  });
}

class DinasanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DinasanPage(),
    );
  }
}

class DinasanPage extends StatefulWidget {
  @override
  _DinasanPageState createState() => _DinasanPageState();
}

class _DinasanPageState extends State<DinasanPage> {
  String seriLoko;

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
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue,
                                  blurRadius: 10.0,
                                  offset: Offset(
                                    5.0,
                                    2.0,
                                  ),
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Selesai",
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
                height: 50.0,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Seri Lokomotif",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40.0,
                              width: 200.0,
                              color: Colors.white,
                              child: TextFormField(
                                onSaved: (e) => seriLoko = e,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "Please insert seri lokomotif";
                                  }
                                },
                                keyboardType: TextInputType.text,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Asal Dipo",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40.0,
                              width: 200.0,
                              color: Colors.white,
                              child: TextFormField(
                                onSaved: (e) => seriLoko = e,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "Please insert asal dipo";
                                  }
                                },
                                keyboardType: TextInputType.text,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Jenis Radio",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40.0,
                              width: 200.0,
                              color: Colors.white,
                              child: TextFormField(
                                onSaved: (e) => seriLoko = e,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "Please insert jenis radio";
                                  }
                                },
                                keyboardType: TextInputType.text,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "ID Terpasang",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40.0,
                              width: 200.0,
                              color: Colors.white,
                              child: TextFormField(
                                onSaved: (e) => seriLoko = e,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "Please insert ID";
                                  }
                                },
                                keyboardType: TextInputType.text,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Hasil Pengecekan",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 40.0,
                              width: 200.0,
                              color: Colors.white,
                              child: TextFormField(
                                onSaved: (e) => seriLoko = e,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (e) {
                                  if (e.isEmpty) {
                                    return "Please insert hasil cek";
                                  }
                                },
                                keyboardType: TextInputType.text,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Container(
                                  height: 40.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xFF348CFF),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'TitilliumWeb',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
