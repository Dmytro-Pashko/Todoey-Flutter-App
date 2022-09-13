import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function(bool isChecked) onTaskChecked;
  final Function() onTaskRemoved;

  const TaskTileWidget({
    super.key,
    required this.label,
    required this.isChecked,
    required this.onTaskChecked,
    required this.onTaskRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        onTaskRemoved();
      },
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      key: Key(label),
      child: ListTile(
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
      ),
    );
  }
}
