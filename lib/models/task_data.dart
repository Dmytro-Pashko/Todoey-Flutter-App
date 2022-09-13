import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy bread.', isCompleted: false),
    Task(name: 'Buy eggs.', isCompleted: false),
    Task(name: 'Buy detergent.', isCompleted: true),
  ];

  int get tasksCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
    print('Added New Task[${task.name}]');
    notifyListeners();
  }

  void updateTaskState(int index, bool isCompleted) {
    _tasks[index].isCompleted = isCompleted;
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
