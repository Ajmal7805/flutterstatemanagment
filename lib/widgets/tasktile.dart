// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isckecked;
  final String? taskTitle;
  final Function checkboxcallback;
  const TaskTile(
      {super.key,
      this.isckecked,
      this.taskTitle,
      required this.checkboxcallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          taskTitle!,
          style: TextStyle(
            decoration: isckecked == true ? TextDecoration.lineThrough : null,
            fontSize: 15,
          ),
        ),
        trailing: Checkbox(
          value: isckecked,
          onChanged: (value) {
            checkboxcallback(value);
          },
        ));
  }
}
