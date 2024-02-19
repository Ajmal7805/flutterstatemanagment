// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/modal/task_data.dart';
import 'package:flutterstatemanagment/widgets/tasktile.dart';
import 'package:provider/provider.dart';

class Listviewmodal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: value.tasks[index].name,
                isckecked: value.tasks[index].isdone,
                checkboxcallback: (bool checkboxState) {
                  // setState(() {
                  //   Provider.of(context).tasks[index].toggledone();
                  // });
                });
          },
          itemCount: value.taskcount,
        );
      },
    );
  }
}
