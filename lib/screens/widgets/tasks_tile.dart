import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final String label;
  final bool isChecked;

  const TaskTileWidget({
    super.key,
    required this.label,
    required this.isChecked,
    required this.onChanged,
  });

  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
