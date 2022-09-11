import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function(bool isChecked) onTaskChecked;

  const TaskTileWidget({
    super.key,
    required this.label,
    required this.isChecked,
    required this.onTaskChecked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontStyle: isChecked ? FontStyle.italic : FontStyle.normal,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          onTaskChecked(!isChecked);
        },
      ),
    );
  }
}
