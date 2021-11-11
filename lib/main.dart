import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: Text("Magic ball")),
            backgroundColor: Colors.red,
          ),
          body: MagicPage(),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballnum = 1;

  void ballNum() {
    setState(() {
      ballnum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextButton(
              child: Image.asset("images/ball$ballnum.png"),
              onPressed: () {
                ballNum();
              },
            ),
          )
        ],
      ),
    );
  }
}
