import 'package:flutter/material.dart';

enum Priority { high, medium, low }

class PriorityWithAttribute extends StatelessWidget {
  final Priority selectedPriority;
  final Function(Priority) onChanged;

  const PriorityWithAttribute({
    super.key,
    required this.selectedPriority,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Priority"),

        RadioListTile(
          title: const Text("High"),
          value: Priority.high,
          groupValue: selectedPriority,
          onChanged: (value) => onChanged(value!),
        ),

        RadioListTile(
          title: const Text("Medium"),
          value: Priority.medium,
          groupValue: selectedPriority,
          onChanged: (value) => onChanged(value!),
        ),

        RadioListTile(
          title: const Text("Low"),
          value: Priority.low,
          groupValue: selectedPriority,
          onChanged: (value) => onChanged(value!),
        ),
      ],
    );
  }
}
