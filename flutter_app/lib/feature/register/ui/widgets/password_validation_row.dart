import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';

class PasswordValidationRow extends StatelessWidget {
  final String text;
  final bool hasValidated;
   const PasswordValidationRow({
     super.key,
     required this.text,
     required this.hasValidated,
   });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: hasValidated ? Colors.green : Colors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyle(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? Colors.green : Colors.grey,
            fontSize: 13,
            fontWeight: hasValidated ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
