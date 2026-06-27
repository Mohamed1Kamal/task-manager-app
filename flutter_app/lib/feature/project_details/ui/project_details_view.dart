import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/core/widgets/app_bar_widget.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:flutter_app/feature/project_details/logic/task_cubit.dart';
import 'package:flutter_app/feature/project_details/logic/task_states.dart';
import 'package:flutter_app/feature/project_details/ui/widgets/task_item.dart';
import 'package:flutter_app/feature/project_details/ui/widgets/task_item_shimmer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailsView extends StatelessWidget {
  final String projectTitle;
  final int projectId;
  const ProjectDetailsView({super.key, required this.projectTitle, required this.projectId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRouter.router.push(
            AppRouter.kViewAddTask,
            extra: {
              "projectTitle": projectTitle,
              "projectId" : projectId,
            } ,
            );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(title: 'Project Details'),
              verticalSpace(20),
              Text(projectTitle, style: AppTextStyles.font24BlackW700),

              verticalSpace(20),
              Expanded(
                child: BlocBuilder<TaskCubit, TaskStates>(
                  buildWhen: (previous, current) {
                    return current.maybeWhen(
                      taskLoading: () => true,
                      taskSuccess: (_) => true,
                      taskError: (_) => true,
                      orElse: () => false,
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      taskLoading: () => setupLoading(),

                      taskSuccess: (data) => setupSuccess(data),

                      taskError: (error) => setupError(error),

                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupLoading() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => const TaskItemShimmer(),
    );
  }

  Widget setupSuccess(List<TaskModel> tasks) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => TaskItem(task: tasks[index]),
    );
  }

  Widget setupError(String error) {
    return Center(
      child: Text(error, style: TextStyle(color: Colors.red)),
    );
  }
}
