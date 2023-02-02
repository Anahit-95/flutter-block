import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      children: taskList
          .map((task) => ExpansionPanelRadio(
              value: task.id,
              headerBuilder: ((context, isOpen) => TaskTile(task: task)),
              body: Text('description')))
          .toList(),
    );
  }
}

// Expanded(
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           var task = taskList[index];
//           return TaskTile(task: task);
//         },
//         itemCount: taskList.length,
//       ),
//     );
