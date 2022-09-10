import 'package:flutter/material.dart';

class TaskTileWidget extends StatefulWidget {
  final String label;
  final bool isChecked;

  const TaskTileWidget({
    super.key,
    required this.label,
    required this.isChecked,
  });

  @override
  State<TaskTileWidget> createState() => _TaskTileWidgetState(label, isChecked);
}

class _TaskTileWidgetState extends State<TaskTileWidget> {
  String label;
  bool isChecked;

  _TaskTileWidgetState(this.label, this.isChecked);

  void _onTaskChecked(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

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
        onChanged: _onTaskChecked,
      ),
    );
  }
}
