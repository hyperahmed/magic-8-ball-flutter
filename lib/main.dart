import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home:
          Scaffold(
            appBar: AppBar(
              title: Text('Ask Me Anything'), centerTitle: true,
            ),
            body: MainPage(),
          )
      ),
    );

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(onPressed: () { setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
                },
                    child: Image.asset('images/ball$ballNumber.png')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

