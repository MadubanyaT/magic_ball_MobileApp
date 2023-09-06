import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Don\'t hesitate to interrogate me!'),
            ),
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: magic_Page(),
          backgroundColor: Colors.cyan.shade900,
        ),
      ),
    );

class magic_Page extends StatefulWidget {
  const magic_Page({super.key});

  @override
  State<magic_Page> createState() => _magic_PageState();
}

class _magic_PageState extends State<magic_Page> {
  @override
  int num = 1;

  void Randnum() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton( //creates invisible button
                onPressed: () {
                  Randnum();
                },
                child: Image.asset('images/ball$num.png')),
          ),
        ],
      ),
    );
  }
}
