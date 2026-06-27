//create cubit
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/new_task/data/model/task_request_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/feature/new_task/logic/add_task_states.dart';
import 'package:flutter_app/feature/new_task/data/repo/add_task_repo.dart';

class AddTaskCubit extends Cubit<AddTaskStates> {
  final AddTaskRepo _addTaskRepo;
  AddTaskCubit(this._addTaskRepo) : super(AddTaskStates.taskInit());
 

  void addTask(TaskRequestModel task) async {
    emit(AddTaskStates.taskLoading());
    final response = await _addTaskRepo.addTask(task);
    response.when(
      success: (data) {
        emit(AddTaskStates.taskSuccess(data));
      },
      failure: (error) {
        emit(
          AddTaskStates.taskError(error.apiErrorModel.message ?? "Error Message"),
        );
      },
    );
  }
}