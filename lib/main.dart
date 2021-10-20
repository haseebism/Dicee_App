import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Ludo'),
          backgroundColor: Colors.blue,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int leftDiceNumber1 = 1;
  int rightDiceNumber2 = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber1 = Random().nextInt(6) + 1;
      rightDiceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),

                Expanded(
                  child: TextButton(
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),

                Expanded(
                  child: TextButton(
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
