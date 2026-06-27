//create cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/project_details/logic/task_states.dart';
import 'package:flutter_app/feature/project_details/data/repo/task_repo.dart';

class TaskCubit extends Cubit<TaskStates> {
  final TaskRepo _taskRepo;
  TaskCubit(this._taskRepo) : super(TaskStates.taskInit());
 

  void getTasksByProject(int projectId) async {
    emit(TaskStates.taskLoading());
    final response = await _taskRepo.getTasksByProject(projectId);
    response.when(
      success: (data) {
        emit(TaskStates.taskSuccess(data));
      },
      failure: (error) {
        emit(
          TaskStates.taskError(error.apiErrorModel.message ?? "Error Message"),
        );
      },
    );
  }
}