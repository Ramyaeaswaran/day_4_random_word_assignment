import 'dart:math';
import 'package:english_words/english_words.dart';
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
  String z;
  String r;
 List words = Words.list;
  void PasswordGenerator() {
    generateWordPairs().take(1);
    setState(() {
          a = WordPair.random(random: Random()).asCamelCase;
          b = WordPair.random(random: Random()).asCamelCase;
          c = WordPair.random(random: Random()).asCamelCase;
        }
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text('$a $b $c',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.0),),

            FlatButton(
                color: Colors.blue,
                child: new Text('New Password', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600),),
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
