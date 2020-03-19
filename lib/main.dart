import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo.shade700,
            title: Center(
              child: Text(
                'ASK ME ANYTHING',
                style: TextStyle(
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          body: MagicPage(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int currentImage = 1;

  void setAnswer() {
    currentImage = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                setAnswer();
              });
            },
            child: Image.asset('images/ball$currentImage.png'),
          ),
        ),
      ),
    );
  }
}
