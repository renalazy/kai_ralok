import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(RegisterApp());
  });
}

class RegisterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register',
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  String username, password;
  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appbarContent = AppBar(
      title: Text(
        'Radio Lokomotif',
        style: TextStyle(
            fontSize: 31.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Color(0xFF348CFF),
    );

    final bodyContent = SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 35.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Create New\nAccount',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Color(0xFF348CFF)),
                ),
              ),
              SizedBox(
                height: 75.0,
              ),
              Container(
                height: 50.0,
                child: TextFormField(
                  onSaved: (e) => username = e,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
                  ),
                  validator: (e) {
                    if (e.isEmpty) {
                      return "Please insert username";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 50.0,
                child: TextFormField(
                  obscureText: _secureText,
                  onSaved: (e) => password = e,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: showHide,
                      icon: Icon(_secureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0)),
                      color: Color(0xFF348CFF),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
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
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: appbarContent,
      body: bodyContent,
    );
  }
}
