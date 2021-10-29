import 'dart:html';
import 'dart:io';
import 'but1.dart';
import 'but2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _q = 0;
  int _a = 0;
  void _inc() {
    setState(() {
      _q++;
    });
  }

  void _inx() {
    setState(() {
      _a++;
    });
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
    var answer = [
      ' ',
      'Abdelrahman',
      '20',
      'Engineering',
      '0',
      'Drawing and programming'
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
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('  '),
                Text(
                  quiz[_q + 1],
                  textAlign: TextAlign.center,
                ),
                Text('  '),
                But1(_inc),
                Text('  '),
                Text('  '),
                But2(_inx),
                Text('  '),
                Text(
                  '''${quiz[_a]} 
                  ${answer[_a]}''',
                  textAlign: TextAlign.center,
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
