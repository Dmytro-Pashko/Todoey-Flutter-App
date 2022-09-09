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
          onChanged: (value) {},
        ),
        TaskTileWidget(
          label: 'Buy eggs',
          isChecked: false,
          onChanged: (value) {},
        ),
        TaskTileWidget(
          label: 'Buy detergent',
          isChecked: false,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
