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
  late String _name;
  late int _age;

  void nameOnSubmitted(String value) {
    _name = value;
  }

  void ageOnSubmitted(String value) {
    try {
      _age = int.parse(value);
    } on FormatException catch (e) {
      setState(() {
        _message = 'please enter a valid age';
      });
    }
  }

  void enterClub() {
    setState(() {
      if (_age >= 18) {
        _message = "Hello $_name, You are allowed entry";
      } else {
        _message = "$_name, you are not old enough";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(42),
      child: Column(
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(fontSize: 24),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter your name"),
            onChanged: nameOnSubmitted,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your age'),
            onChanged: ageOnSubmitted,
          ),
          RaisedButton(
            child: Text(
              "Submit",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: enterClub,
          )
        ],
      ),
    );
  }
}
