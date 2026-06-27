import 'package:flutter/material.dart';

enum TaskStatus { done, inProgress, pending }

class StatusWithAttributes extends StatelessWidget {
  final TaskStatus selectedStatus;
  final Function(TaskStatus) onChanged;

  const StatusWithAttributes({
    super.key,
    required this.selectedStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Status"),

        RadioListTile(
          title: const Text("Done"),
          value: TaskStatus.done,
          groupValue: selectedStatus,
          onChanged: (value) => onChanged(value!),
        ),

        RadioListTile(
          title: const Text("In Progress"),
          value: TaskStatus.inProgress,
          groupValue: selectedStatus,
          onChanged: (value) => onChanged(value!),
        ),

        RadioListTile(
          title: const Text("Pending"),
          value: TaskStatus.pending,
          groupValue: selectedStatus,
          onChanged: (value) => onChanged(value!),
        ),
      ],
    );
  }
}
