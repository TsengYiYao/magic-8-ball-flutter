import 'dart:math';
import 'package:flutter/material.dart';

//void main() => runApp(
//      MaterialApp(
//        home: Scaffold(
//          backgroundColor: Colors.blue,
//          appBar: AppBar(
//            title: Text('Ask Me Anything'),
//            backgroundColor: Colors.blue.shade900,
//          ),
//          body: BallPage(),
//        ),
//      ),
//    );
//
//class BallPage extends StatefulWidget {
//  @override
//  _BallPageState createState() => _BallPageState();
//}
//
//class _BallPageState extends State<BallPage> {
//  int num = 1;
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: FlatButton(
//        child: Image.asset('images/ball$num.png'),
//        onPressed: () {
//          setState(() {
//            num = Random().nextInt(5) + 1;
//          });
//        },
//      ),
//    );
//  }
//}

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
