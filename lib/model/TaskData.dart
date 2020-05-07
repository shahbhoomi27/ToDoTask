import 'package:todo_list_app/model/Task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "Buy bread"),
    Task(name: "Buy cheese"),
    Task(name: "Buy butter"),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String newTask) {
    _taskList.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheck();
    notifyListeners();
  }
  void deleteTask(Task task){
    _taskList.remove(task);
    notifyListeners();
  }
}
