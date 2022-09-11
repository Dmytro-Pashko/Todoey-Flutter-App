import 'package:flutter/material.dart';

import '../models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTileWidget(
            label: widget.tasks[index].name,
            isChecked: widget.tasks[index].isCompleted,
            onTaskChecked: (isChecked) {
              setState(() {
                widget.tasks[index].isCompleted = isChecked;
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
