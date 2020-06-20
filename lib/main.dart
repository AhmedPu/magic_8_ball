import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNumber = 1;
  void randomNumber() {
    setState(() {
      imageNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
              },
              child: Image.asset('images/ball$imageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anythingss'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
