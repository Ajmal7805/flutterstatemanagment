// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/modal/task_data.dart';
import 'package:flutterstatemanagment/screens/teskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      child: MaterialApp(
        title: 'To do App',
        home: TaskScreen(),
      ),
    );
  }
}
