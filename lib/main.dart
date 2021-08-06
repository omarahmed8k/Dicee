import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade400,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Lnumber = 5;
  int Rnumber = 1;
  void randomFun() {
    setState(() {
      Rnumber = Random().nextInt(6) + 1;
      Lnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  randomFun();
                },
                child: Image.asset('images/dice$Lnumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  randomFun();
                },
                child: Image.asset('images/dice$Rnumber.png')),
          ),
        ],
      ),
    );
  }
}
