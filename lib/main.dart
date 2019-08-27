import 'package:flutter/material.dart';
import 'package:hoge/home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: new Color(0xff006699)
      ),
      home: Home(),
    );
  }
}