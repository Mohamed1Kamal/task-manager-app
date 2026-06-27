import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskItem extends StatefulWidget {
  final TaskModel task;
  const TaskItem({super.key, required this.task});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isDone(String status) {
    return status.toLowerCase() == "done";
  }

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "done":
        return Colors.green;
      case "in progress":
        return Colors.orange;
      case "pending":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
        ],
      ),
      child: Row(
        children: [
          Checkbox(value: isDone(widget.task.status), onChanged: (_) {}),

          horizontalSpace(10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.task.title,
                  style: AppTextStyles.font14BlackSemiBold,
                ),

                verticalSpace(6),

                Row(
                  children: [
                    Text(
                      widget.task.priority,
                      style: AppTextStyles.font12BlueRegular.copyWith(
                        color: Colors.black,
                      ),
                    ),

                    horizontalSpace(10),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: getStatusColor(
                          widget.task.status,
                        ).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        widget.task.status,
                        style: TextStyle(
                          color: getStatusColor(widget.task.status),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
