import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Ask',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  void updateBall() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
  int ballNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  TextButton(
        child: Image.asset(
          'lib/images/ball$ballNumber.png'
          ),
        onPressed: () => 
          updateBall()
        ),
      );  
  }
}