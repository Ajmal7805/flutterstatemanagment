// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListTilemodal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'This is a task',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
