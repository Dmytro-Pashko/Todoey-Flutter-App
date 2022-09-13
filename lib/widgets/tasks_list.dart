import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (BuildContext context, data, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTileWidget(
            label: data.tasks[index].name,
            isChecked: data.tasks[index].isCompleted,
            onTaskChecked: (isChecked) {
              data.updateTaskState(index, isChecked);
            },
            onTaskRemoved: () {
              data.removeTask(index);
            },
          );
        },
        itemCount: data.tasksCount,
      );
    });
  }
}
