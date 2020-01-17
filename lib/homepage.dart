import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(HomepageApp());
  });
}

class HomepageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomepagePage extends StatefulWidget {
  @override
  _HomepagePageState createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
