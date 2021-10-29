import 'dart:html';
import 'dart:io';
import 'but1.dart';
import 'but2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController(); //to get data from text box

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  } // to clear when not used

  int _q = 0;
  int _q2 = 0;
  List _a = [' ', ' ', ' ', ' ', ' ', ' '];

  void _inc() {
    setState(() {
      _q++;
    });
  }

  void _inx() {
    setState(
      () {
        context:
        context;
        builder:
        (context) {
          return Text(myController.text);
        };
        _a[_q2] = Text(myController.text).toString();
        _q2++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var quiz = [
      ' ',
      'Q1: What is your name?',
      'Q2: Please enter your age',
      'Q3: Studying in faculty of',
      'Q4: Years of experience',
      'Q5: What are your skills?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Job Application',
          ),
          backgroundColor: Colors.black,
        ),
        body: Row(
          children: [
            Column(
              children: [
                Text('   '),
                Text(
                  'Hi!',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Text(' '),
                Container(
                  width: 500,
                  child: Text(
                    'Please answer the following questions',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('  '),
                Text(
                  quiz[_q + 1],
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Text('  '),
                But1(_inc),
                Text('  '),
                Container(
                  height: 100,
                  width: 300,
                  child: TextField(
                    controller: myController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your answer'),
                  ),
                ),
                But2(_inx),
                Text('  '),
                Row(
                  children: [
                    Text(
                      '''
                    Name:
                    Age:
                    Faculty:
                    Experience:
                    Skills:
                    ''',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '''
                    ${_a[1]}
                    ${_a[2]}
                    ${_a[3]}
                    ${_a[4]}
                    ${_a[5]}''',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
