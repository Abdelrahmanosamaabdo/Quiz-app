import 'package:flutter/material.dart';

class But1 extends StatelessWidget {
  final click;

  But1(this.click);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: RaisedButton(
        child: Text('Next question'),
        onPressed: click,
      ),
    );
  }
}
