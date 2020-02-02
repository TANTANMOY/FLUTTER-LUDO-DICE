import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body:

        DicePage(),

      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  @override
  int leftdice = 5;
  int rightdice = 2;
  //For right dice
  void rightd() {
    return
      setState(() {
        rightdice= Random().nextInt(6)+1;
      });
  }
  //For left dice
  void leftd() {
    return   setState(() {
      leftdice = Random().nextInt(6)+1;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded (
              child: FlatButton(
                onPressed:() {
                  leftd();
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),

            ),

            Expanded (
              child: FlatButton(
                onPressed: () {
                  rightd();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


