// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/modal/task_data.dart';
import 'package:provider/provider.dart';

class Addscreen extends StatefulWidget {
  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  String? newtasktitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'ADD TASK',
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
          ),
          TextField(
            onChanged: (newvalue) {
              newtasktitle = newvalue;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Provider.of<Taskdata>(context).tasks.add(newtasktitle.toString());
              Navigator.pop(context);
            },
            color: Colors.lightBlueAccent,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: double.infinity,
            child: Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
