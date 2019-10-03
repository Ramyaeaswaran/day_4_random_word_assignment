import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';
//import 'package:dart_random_choice/dart_random_choice.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String a ;
  String b ;
  String c ;
  List words = Words.list;
  void PasswordGenerator() {
    setState(() {
      final _random = new Random();
       a = words[_random.nextInt(words.length)];
       b = words[_random.nextInt(words.length)];
      c = words[_random.nextInt(words.length)];
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RandomPasswords'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$a $b $c'),
            FlatButton(color: Colors.blue,
              child: new Text('New Password', textAlign: TextAlign.center),
              onPressed: PasswordGenerator,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home:Password(),
    ),
  );
}
 // you are given list of words

// Create a stateful widget called `PasswordGenerator` here
