import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App From Scratch',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Age Validator'),
        ),
        body: Age(),
      ),
    );
  }
}

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  String _message = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(fontSize: 20),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter your name"),
          )
        ],
      ),
    );
  }
}
