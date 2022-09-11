import 'package:flutter/material.dart';

import '../models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy bread.', isCompleted: false),
    Task(name: 'Buy eggs.', isCompleted: false),
    Task(name: 'Buy detergent.', isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTileWidget(
            label: tasks[index].name,
            isChecked: tasks[index].isCompleted,
            onTaskChecked: (isChecked) {
              setState(() {
                tasks[index].isCompleted = isChecked;
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
