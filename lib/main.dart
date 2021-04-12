import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent[900],
            title: Text(
              'Ask Me Anything',
              // style: TextStyle(
              //     fontFamily: 'Schyler', fontWeight: FontWeight.normal),
            ),
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  //integer variable for the ball number
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(4) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
