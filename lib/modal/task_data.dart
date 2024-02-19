import 'package:flutter/material.dart';
import 'package:flutterstatemanagment/modal/modal.dart';

class Taskdata extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'ajmal')];
  int get taskcount {
    return tasks.length;
  }

  void addtask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    tasks.add(task);
    notifyListeners();
  }
}
