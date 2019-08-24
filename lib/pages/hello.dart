import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  AlertDialog dialog = AlertDialog(
      content: Text(
        'こんにちは',
        style: TextStyle(fontSize: 20.0),
      ));

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: RaisedButton(
            child: Text('PRESS ME!', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
            }));
  }
}
