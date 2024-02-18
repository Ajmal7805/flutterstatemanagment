// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/screens/teskscreen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do App',
      home: TaskScreen(),
    );
  }
}
