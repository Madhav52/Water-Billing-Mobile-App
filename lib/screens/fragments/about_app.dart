import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => new _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text("About App Screen"),
        ),
      ),
    );
  }
}


