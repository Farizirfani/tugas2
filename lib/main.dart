// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'yang buat ganteng',
          ),
          backgroundColor: Colors.black87,
        ),
        body: const IniBody(),
      ),
    );
  }
}

class IniBody extends StatefulWidget {
  const IniBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IniBodyState createState() => _IniBodyState();
}

class _IniBodyState extends State<IniBody> {
  int LeftDiceNumber = 4;
  int RightDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$LeftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    LeftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$RightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    RightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
