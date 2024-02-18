import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/widgets/tasktile.dart';

class Listviewmodal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTilemodal(),
        ListTilemodal(),
        ListTilemodal(),
        ListTilemodal(),
      ],
    );
  }
}
