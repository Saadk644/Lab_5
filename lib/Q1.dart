import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: const BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        backgroundColor: Color.fromARGB(255, 9, 76, 131),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: FlatButton(
          child: Image.asset("assets/ball$num.png"),
          onPressed: () {
            setState(() {
              num = Random().nextInt(4) + 1;
            });
            print("I got Clicked.");
          },
        ),
      ),
    );
  }
}
