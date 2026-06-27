import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/core/widgets/app_bar_widget.dart';
import 'package:flutter_app/core/widgets/app_text_button.dart';
import 'package:flutter_app/feature/new_task/data/model/task_request_model.dart';
import 'package:flutter_app/feature/new_task/logic/add_task_cubit.dart';
import 'package:flutter_app/feature/new_task/logic/add_task_states.dart';
import 'package:flutter_app/feature/new_task/ui/widgets/priority_with_attribute.dart';
import 'package:flutter_app/feature/new_task/ui/widgets/status_with_attributes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskView extends StatefulWidget {
  final int projectId;
  final String projectTitle;

  const AddTaskView({super.key, required this.projectId, required this.projectTitle});

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  late TextEditingController titleController;

  Priority selectedPriority = Priority.medium;
  TaskStatus selectedStatus = TaskStatus.pending;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocConsumer<AddTaskCubit, AddTaskStates>(
              listener: (context, state) {
                state.maybeWhen(
                  taskSuccess: (_) {
                    titleController.clear();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Task Added Successfully")),
                    );
                  },
                  taskError: (error) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(error)));
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  taskLoading: () =>
                      const Center(child: CircularProgressIndicator()),
                  orElse: () => _buildForm(context),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBarWidget(
          title: 'Add New Task',
          onIconBackPressed: () {
            AppRouter.router.push(
              AppRouter.kViewProjectDetails,
              extra: {
                "projectTitle" : widget.projectTitle,
                "projectId": widget.projectId,
              }
              );
          },
        ),

        verticalSpace(20),

        const Text("Task Title"),
        verticalSpace(10),

        TextField(
          controller: titleController,
          decoration: InputDecoration(
            hintText: "Enter task title",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),

        verticalSpace(20),

        PriorityWithAttribute(
          selectedPriority: selectedPriority,
          onChanged: (value) {
            setState(() {
              selectedPriority = value;
            });
          },
        ),

        verticalSpace(20),

        StatusWithAttributes(
          selectedStatus: selectedStatus,
          onChanged: (value) {
            setState(() {
              selectedStatus = value;
            });
          },
        ),

        verticalSpace(30),

        AppTextButton(
          buttonText: 'Save Task',
          textStyle: AppTextStyles.font16WhiteSemiBold,
          onPressed: () => _addTask(context),
        ),
      ],
    );
  }

  void _addTask(BuildContext context) {
    final title = titleController.text.trim();

    if (title.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Title is required")));
      return;
    }

    final task = TaskRequestModel(
      projectId: widget.projectId,
      title: title,
      priority: selectedPriority.toApi(),
      status: selectedStatus.toApi(),
    );

    context.read<AddTaskCubit>().addTask(task);
  }
}

extension PriorityMapper on Priority {
  String toApi() {
    switch (this) {
      case Priority.high:
        return "High";
      case Priority.medium:
        return "Medium";
      case Priority.low:
        return "Low";
    }
  }
}

extension StatusMapper on TaskStatus {
  String toApi() {
    switch (this) {
      case TaskStatus.done:
        return "Done";
      case TaskStatus.inProgress:
        return "In Progress";
      case TaskStatus.pending:
        return "Pending";
    }
  }
}
