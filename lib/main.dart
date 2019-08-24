import 'package:flutter/material.dart';
import 'package:hoge/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEST?',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: new Color(0xff006699)
      ),
      home: Hello(),
    ));

