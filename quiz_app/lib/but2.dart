import 'package:flutter/material.dart';

class But2 extends StatelessWidget {
  final s;

  But2(this.s);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: RaisedButton(
        child: Text('Submit answer'),
        onPressed: s,
      ),
    );
  }
}
