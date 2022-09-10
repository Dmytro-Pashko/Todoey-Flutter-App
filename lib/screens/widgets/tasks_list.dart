import 'package:flutter/material.dart';

import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTileWidget(
          label: 'Buy milk',
          isChecked: false,
        ),
        TaskTileWidget(
          label: 'Buy eggs',
          isChecked: false,
        ),
        TaskTileWidget(
          label: 'Buy detergent',
          isChecked: false,
        ),
      ],
    );
  }
}
